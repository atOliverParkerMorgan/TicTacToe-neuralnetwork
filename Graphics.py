import sys
import time

import pygame as pg
import pygame_menu
from pygame.locals import *
from pygame_menu.examples import create_example_window

import Minimax
import Neuralnetwork
from Game import Game, VALID_MOVE, O_PLAYING, X_PLAYING

WHITE = (255, 255, 255)
BLACK = (0, 0, 0)

FPS = 30

CLOCK = pg.time.Clock()


class Graphics:
    def __init__(self, width, height):
        pg.init()

        pg.display.set_caption("My Tic Tac Toe")
        self.width = width
        self.height = height

        self.screen = pg.display.set_mode((width, height + 100), 0, 32)

        # loading the images as python object
        initiating_window = pg.image.load("assets/modified_cover.png")
        x_img = pg.image.load("assets/X.png")
        o_img = pg.image.load("assets/o.png")

        # resizing images
        self.initiating_window = pg.transform.scale(initiating_window, (width, height + 100))
        self.x_img = pg.transform.scale(x_img, (80, 80))
        self.o_img = pg.transform.scale(o_img, (80, 80))

        self.ai = None
        self.ai_player = None
        self.menu = None
        self.model_O = None
        self.model_X = None

        self.game = Game()

    def reset(self):
        self.game = Game()
        self.screen = pg.display.set_mode((self.width, self.height + 100), 0, 32)

        self.game_initiating_window()

    def game_initiating_window(self):
        # displaying over the screen
        self.screen.blit(self.initiating_window, (0, 0))

        pg.display.update()
        time.sleep(3)
        self.screen.fill(WHITE)

        pg.draw.line(self.screen, BLACK, (self.width / 3, 0), (self.width / 3, self.height), 7)
        pg.draw.line(self.screen, BLACK, (self.width / 3 * 2, 0), (self.width / 3 * 2, self.height), 7)

        pg.draw.line(self.screen, BLACK, (0, self.height / 3), (self.width, self.height / 3), 7)
        pg.draw.line(self.screen, BLACK, (0, self.height / 3 * 2), (self.width, self.height / 3 * 2), 7)

        self.draw_status(self.game.game_state)
        self.drawXO()

    def draw_status(self, message):
        font = pg.font.Font(None, 30)

        text = font.render(message, True, (255, 255, 255))

        self.screen.fill((0, 0, 0), (0, self.width, self.height + 100, self.height))
        text_rect = text.get_rect(center=(self.width / 2, self.height + 50))
        self.screen.blit(text, text_rect)

    def drawXO(self):

        pixel_bias = 30
        for y in range(3):
            for x in range(3):
                if self.game.board[y][x] == "O":
                    self.screen.blit(self.o_img, (x * self.width / 3 + pixel_bias, y * self.width / 3 + pixel_bias))
                elif self.game.board[y][x] == "X":
                    self.screen.blit(self.x_img, (x * self.width / 3 + pixel_bias, y * self.width / 3 + pixel_bias))

        pg.display.update()

    def user_input(self):
        x, y = pg.mouse.get_pos()
        matrix_x, matrix_y = None, None

        for i in range(3):
            if x < self.width / 3 * (i + 1) and matrix_x is None:
                matrix_x = i
            if y < self.height / 3 * (i + 1) and matrix_y is None:
                matrix_y = i
        # print(f"{matrix_x} {matrix_y}")

        if matrix_x is None or matrix_y is None:
            return

        message = self.game.move(matrix_x, matrix_y) + " - "
        if message == VALID_MOVE + " - ":
            message = ""

        self.drawXO()
        self.draw_status(message + self.game.game_state)

    def game_loop(self, model_O=None, model_X=None):
        self.model_O = model_O
        self.model_X = model_X

        def nn_ai_O():
            self.ai = "neuralnetwork"
            self.ai_player = O_PLAYING
            if self.model_O is not None:
                game()
            else:
                print("Error, must provide model")

        def nn_ai_X():
            self.ai = "neuralnetwork"
            self.ai_player = X_PLAYING
            if self.model_X is not None:
                game()
            else:
                print("Error, must provide model")

        def minmax_ai_O():
            self.ai = "minimax"
            self.ai_player = O_PLAYING
            game()

        def minmax_ai_X():
            self.ai = "minimax"
            self.ai_player = X_PLAYING
            game()

        def game():
            self.reset()

            while True:
                if self.ai_player == self.game.game_state:
                    if self.ai == "minimax":
                        best_move = Minimax.get_best_move(self.game)
                        message = self.game.move(best_move[0], best_move[1])
                        self.drawXO()
                        self.draw_status(message + " " + self.game.game_state)

                    elif self.ai == "neuralnetwork":
                        if self.game.game_state == O_PLAYING:
                            best_move = Neuralnetwork.get_best_move(model_O, self.game)
                        elif self.game.game_state == X_PLAYING:
                            best_move = Neuralnetwork.get_best_move(model_X, self.game)
                        else:
                            break

                        message = self.game.move(best_move[0], best_move[1])
                        self.drawXO()
                        self.draw_status(message + " " + self.game.game_state)

                for event in pg.event.get():
                    if event.type == QUIT:
                        pg.quit()
                        sys.exit()
                    if event.type == MOUSEBUTTONDOWN:
                        if self.game.is_ending_state():
                            self.reset()

                        else:
                            self.user_input()
                            self.game.print_board()

                pg.display.update()
                CLOCK.tick(FPS)

        # create menu
        surface = create_example_window('TICTACTOE', (self.width, self.height))

        self.menu = pygame_menu.Menu('TICTACTOE', self.width, self.height,
                                     theme=pygame_menu.themes.THEME_ORANGE)
        self.menu.add.label('\nTICTACTOE\n---')
        self.menu.add.button("X-PLAYER VS O-PLAYER", game)
        self.menu.add.button("X-MINIMAX VS O-PLAYER", minmax_ai_X)
        self.menu.add.button("O-MINIMAX VS X-PLAYER", minmax_ai_O)
        self.menu.add.button("X-NEURALNET VS O-PLAYER", nn_ai_X)
        self.menu.add.button("O-NEURALNET VS X-PLAYER", nn_ai_O)
        self.menu.add.label('---')
        self.menu.add.label('           Author: Oliver Morgan           ')
        self.menu.add.label("")

        self.menu.mainloop(surface)

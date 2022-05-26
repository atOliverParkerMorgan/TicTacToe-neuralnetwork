import pygame as pg
import sys
import time
from pygame.locals import *
from Game import Game, O_WON, X_WON, DRAW, X_PLAYING, O_PLAYING, VALID_MOVE

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
        initiating_window = pg.image.load("modified_cover.png")
        x_img = pg.image.load("X.png")
        o_img = pg.image.load("o.png")

        # resizing images
        self.initiating_window = pg.transform.scale(initiating_window, (width, height + 100))
        self.x_img = pg.transform.scale(x_img, (80, 80))
        self.o_img = pg.transform.scale(o_img, (80, 80))

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

        self.screen.fill((0, 0, 0), (0, 400, 500, 100))
        text_rect = text.get_rect(center=(self.width / 2, 500 - 50))
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

        message = self.game.move(matrix_x, matrix_y)+" - "
        if message == VALID_MOVE + " - ":
            message = ""

        self.draw_status(message + self.game.game_state)
        self.drawXO()

    def game_loop(self):
        self.game_initiating_window()

        while True:
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

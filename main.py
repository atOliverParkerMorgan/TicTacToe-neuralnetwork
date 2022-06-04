from Graphics import Graphics
from Game import Game, INVALID_MOVE, X_PLAYING, O_PLAYING
from tensorflow import keras
import Minimax
import Neuralnetwork

global model_X
global model_O


def play(game, player1, player2):
    def turn(player):
        def check_game_state(game_):
            return game_.is_ending_state()

        if check_game_state(game):
            exit()
        if player == "minimax":
            best_move = Minimax.get_best_move(game)

            game.move(best_move[0], best_move[1])

            print(best_move)

            game.print_board()

        elif player == "neuralnetwork":
            model = model_O
            if game.game_state == X_PLAYING:
                model = model_X

            best_move = Neuralnetwork.get_best_move(model, game)

            game.move(best_move[0], best_move[1])

            print(best_move)

            game.print_board()

        else:
            # player movement
            input_xy = input("Input XY: ")

            x, y = int(input_xy[0]), int(input_xy[1])

            while game.move(x, y) == INVALID_MOVE:
                print("\nINVALID MOVE")
                xy = int(input("Input XY: "))
                x, y = int(str(xy)[0]), int(str(xy)[1])

            game.print_board()

    game.print_board()

    while True:
        print(game.game_state)
        turn(player1)
        print(game.game_state)
        turn(player2)


if __name__ == "__main__":
    # load models
    model_O = keras.models.load_model('./O_model')
    model_X = keras.models.load_model('./X_model')

    # play console game
    current_game = Game()

    # play(current_game, 'minimax', 'player')
    # or
    # play(current_game, 'neuralnetwork', 'player')
    # or
    # play(current_game, 'player', 'player')
    # or
    # play(current_game, 'neuralnetwork', 'neuralnetwork')
    # or
    # play(current_game, 'minimax', 'minimax')

    # play with UI
    graphics = Graphics(600, 600)
    graphics.game_loop(model_O, model_X)

    # train neural network
    # Neuralnetwork.train_and_save_model("./X_model/", "./training_data/X_training_data.txt")
    # Neuralnetwork.train_and_save_model("./O_model/", "./training_data/O_training_data.txt")

    # generate training data
    # generate_training_data(20_000, True, "w")
    # generate_training_data(20_000, False, "w")

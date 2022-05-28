from Graphics import Graphics
from Game import Game, INVALID_MOVE
from Minimax import get_best_move
from Neuralnetwork import generate_model, visualize_nn, generate_training_data, train, compile_model


def play(game):
    def check_game_state(game_):
        print(game_.game_state)

        return game_.is_ending_state()

    game.print_board()
    print(game.game_state)

    while True:
        input_xy = input("Input XY: ")

        x, y = int(input_xy[0]), int(input_xy[1])

        while game.move(x, y) == INVALID_MOVE:
            print("\nINVALID MOVE")
            xy = int(input("Input XY: "))
            x, y = int(str(xy)[0]), int(str(xy)[1])

        game.print_board()

        if check_game_state(game):
            break

        best_move = get_best_move(game)

        game.move(best_move[0], best_move[1])

        print(best_move)

        game.print_board()
        if check_game_state(game):
            break


if __name__ == "__main__":
    # graphics = Graphics(400, 400)
    # graphics.game_initiating_window()
    # graphics.game_loop()
    model = generate_model(9, [12, 14, 14, 12], 9)
    visualize_nn(model)
    model = compile_model(model)
    model = train(model, "O_training_data.txt", 300, 32)
    model.summary()
    model.save("./")
    # current_game = Game()
    # generate_training_data(20_000, True, "w")
    # generate_training_data(20_000, False, "w")
    # play(current_game)

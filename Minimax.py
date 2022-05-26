from Game import Game, O_WON, X_WON, DRAW, X_PLAYING, O_PLAYING, VALID_MOVE
import copy

WIN_STATE_BONUS = 1_000_000


def game_state_value(game):

    if game.game_state == O_WON:
        return - WIN_STATE_BONUS * (1 + len(game.get_possible_moves()))

    if game.game_state == X_WON:
        return WIN_STATE_BONUS * (1 + len(game.get_possible_moves()))

    return 0


# O => -
# X => +
def get_best_move(game):
    bias = -1
    if game.game_state == O_PLAYING:
        bias = 1

    current_value = bias * (WIN_STATE_BONUS * 100)
    best_move = None

    for move in game.get_possible_moves():
        move_value = minimax(move, copy.deepcopy(game), -100 * WIN_STATE_BONUS, 100 * WIN_STATE_BONUS)
        # print(move)
        # print(move_value)
        if game.game_state == X_PLAYING and current_value < move_value or \
           game.game_state == O_PLAYING and current_value > move_value:
            current_value = move_value
            best_move = move

    return best_move


def minimax(move, game, alpha, beta):
    game.move(move[0], move[1])

    if game.is_ending_state():
        return game_state_value(game)

    if game.game_state == X_PLAYING:
        value = -WIN_STATE_BONUS
        for move in game.get_possible_moves():
            value = max(value, minimax(move, copy.deepcopy(game), alpha, beta))
            if value >= beta:
                break
            alpha = max(alpha, value)

        return value
    elif game.game_state == O_PLAYING:
        value = WIN_STATE_BONUS
        for move in game.get_possible_moves():
            value = min(value, minimax(move, copy.deepcopy(game), alpha, beta))
            if value <= alpha:
                break
            beta = min(beta, value)

        return value

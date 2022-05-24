X_PLAYING = "X is playing"
O_PLAYING = "O is playing"
DRAW = "Draw"
X_WON = "X has won"
O_WON = "O has won"

VALID_MOVE = "VALID MOVE"
INVALID_MOVE = "INVALID MOVE"


class Game:
    def __init__(self):
        self.board = [[None, None, None], [None, None, None], [None, None, None]]
        self.game_state = X_PLAYING

    def print_board(self):
        for row in self.board:
            print(row)

    def move(self, x, y):
        if not (self.game_state == X_PLAYING or self.game_state == O_PLAYING):
            return INVALID_MOVE

        current_symbol = "X"
        if self.game_state == O_PLAYING:
            current_symbol = "O"

        # check valid move
        if self.board[y][x] is None:
            self.board[y][x] = current_symbol
            is_winning_position = self.is_winning_position(x, y, current_symbol)

            # change game_state
            if self.game_state == O_PLAYING:
                self.game_state = X_PLAYING
                if is_winning_position:
                    self.game_state = O_WON
            else:
                self.game_state = O_PLAYING
                if is_winning_position:
                    self.game_state = X_WON

            # check draw
            if len(self.get_possible_moves()) == 0 and not is_winning_position:
                self.game_state = DRAW

            return VALID_MOVE

        else:
            return INVALID_MOVE

    def is_winning_position(self, x, y, symbol):

        # horizontal and vertical check
        if self.board[y][x] == symbol:
            cord = 0
            count_x, count_y = 0, 0
            while cord <= 2:
                if self.board[y][cord] == symbol:
                    count_x += 1
                if self.board[cord][x] == symbol:
                    count_y += 1
                cord += 1

            if count_x == 3 or count_y == 3:
                return True

        # diagonal check
        starting_positions = [(2, 0), (0, 0)]
        bias = 1

        for cords in starting_positions:
            is_winning_position = True

            for i in range(3):
                if self.board[cords[1] + i][cords[0] - i * bias] != symbol:
                    is_winning_position = False
                    break

            if is_winning_position:
                return True

            bias = -1

        return False

    def get_possible_moves(self):
        possible_move = []
        for y in range(3):
            for x in range(3):
                if self.board[y][x] is None:
                    possible_move.append((x, y))

        return possible_move

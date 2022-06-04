
# TICTACTOE NEURAL NETWORK

a project with a neural network that can play tictactoe




#
## Installation

To get the necessary libraries run 

```cdm
  pip3 install -r requirements.txt
```


## How does it work?
- ### Minimax algorithm
    In order to generate training data for my neural network I had to implement a [minimax](https://github.com/Olix03/TicTacToe/blob/master/Minimax.py) algorithm that can
    find the best move for any given game state. The minimax game state evalution is simple. It evaluates the game state as possitive only if a player has won. This works because the algorithm
    goes threw all of the possible moves for the input game state. My minimax algorithm also implements aplha beta pruning to speed up the process of generating training data.

- ### Training data
    To generate training data for my neural network I had to create a random game state and then predict a the best next move with my minimax algorithm. Then I coverted this data into a single array 
    and saved them into a [file](https://raw.githubusercontent.com/Olix03/TicTacToe/master/O_training_data.txt). 

- ### Neuralnetwork
    In this project I used [keras](https://keras.io/) to create a neural network model
    which I then trained on a data set created by my minimax algorithm. The neural has
    nine inputs and outputs it also has three hidden layers. 
    
    ![Neural network model](https://github.com/Olix03/TicTacToe/blob/master/model_visual.png?raw=true)
    
    The neural network model is trained 300 epochs by batches of 32. I used categorical crossentropy as my loss function since my model is a multi-class classification one.   
    
    ![Trianing Graph](https://github.com/atOliverParkerMorgan/TicTacToe-neuralnetwork/raw/master/assets/training_visual.png?raw=true)
## Screenshots
![Screenshot 1](https://github.com/atOliverParkerMorgan/TicTacToe-neuralnetwork/blob/master/screenshots/Screenshot%20from%202022-06-04%2016-25-30.png?raw=true)

![Screenshot 2](https://github.com/atOliverParkerMorgan/TicTacToe-neuralnetwork/blob/master/screenshots/Screenshot%20from%202022-06-04%2016-25-33.png?raw=true)

![Screenshot 3](https://github.com/atOliverParkerMorgan/TicTacToe-neuralnetwork/blob/master/screenshots/Screenshot%20from%202022-06-04%2016-26-25.png?raw=true)

## Author

- [Oliver Morgan](https://github.com/atOliverParkerMorgan)


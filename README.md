# TwO-O-Player Math Game

TwO-O-Player Math Game is a 2-player math game where players take turns to answer simple addition problems. A new addition problem is generated for each player, by picking two numbers between 1 and 20. The player whose turn it is will be asked to solve the addition problem correctly, or lose a life.

## Details

Each player starts with 3 lives. After a player submits an answer, the program will tell the player if the provided response was correct or not. If the response was incorrect, the player will lose a life.

At the end of each turn, the number of lives remaining of each player will be displayed. When a player has no more lives, the game ends.

### Example Prompt
```
Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with 1 life remaining.
----- GAME OVER -----
Good bye!
```

## Classes

Player
- Initializes a player
- Stores the player's state (i.e. lives remaining, and if alive or not)

Question
- Generates a new addition problem
- Prompts the player for a response
- Checks the player response to the correct answer

Game
- Contains the game loop and the associated methods
- Starts the game, creates the players, tracks which player's turn it is, gets the addition problems, tracks the lives of the players, and displays the winner at the end of the game

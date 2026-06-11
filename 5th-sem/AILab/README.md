# Exile Zone

A simple survival game built with Python's Turtle graphics library. The player must collect diamonds while avoiding zombies that continuously chase them. Reach a score of 50 to win the game.

## Features

* Player-controlled character using arrow keys
* Zombie enemies with basic AI pathfinding
* Zombie-to-zombie repulsion to prevent clustering
* Collectible diamonds that increase score
* Bonus points awarded every 5 diamonds collected
* Win condition at 50 points
* Game over screen with restart and quit options
* Start screen with click-to-play functionality
* Custom character, zombie, diamond, and background images

## Screenshots

Add screenshots of your game here.

## Requirements

* Python 3.x
* Turtle Graphics (included with Python)

## Required Assets

Place the following image files in the same directory as the Python script:

```text
human.gif
zombie1.gif
diamond.gif
bg.gif
bg1.gif
```

### Asset Description

| File        | Purpose                 |
| ----------- | ----------------------- |
| human.gif   | Player character        |
| zombie1.gif | Zombie enemy            |
| diamond.gif | Collectible diamond     |
| bg.gif      | Start screen background |
| bg1.gif     | Gameplay background     |

## Installation

1. Clone or download the project.

```bash
git clone <repository-url>
```

2. Navigate to the project folder.

```bash
cd exile-zone
```

3. Ensure all required GIF assets are present.

4. Run the game:

```bash
python exile_zone.py
```

## How to Play

### Controls

| Key | Action     |
| --- | ---------- |
| ↑   | Move Up    |
| ↓   | Move Down  |
| ←   | Move Left  |
| →   | Move Right |

### Objective

* Collect diamonds to earn points.
* Each diamond is worth 1 point.
* Every 10 diamonds collected grants a bonus of 2 points.
* Avoid zombies at all costs.
* Reach 50 points to win.

### Winning

The game ends with a victory screen when your score reaches 50.

### Losing

The game ends if a zombie touches the player.

## Game Mechanics

### Zombie AI

Zombies:

* Continuously move toward the player.
* Move faster than standard Turtle movement.
* Repel each other when they get too close, preventing overlap.

### Diamond Collection

When a diamond is collected:

* The score increases by 1.
* The diamond respawns at a random location.
* A bonus is awarded every 10 diamonds.

## Project Structure

```text
exile-zone/
│
├── exile_zone.py
├── human.gif
├── zombie1.gif
├── diamond.gif
├── bg.gif
├── bg1.gif
└── README.md
```

## Future Improvements

* Multiple difficulty levels
* Sound effects and background music
* Health system
* Power-ups
* High score tracking
* Animated sprites
* Additional enemy types
* Obstacles and maps
* Save/load functionality

## Technologies Used

* Python
* Turtle Graphics
* Random Module
* Math Module

## Author

Created as a Python Turtle Graphics survival game project.


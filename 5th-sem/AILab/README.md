# Exile Zone

## Overview

**Exile Zone** is a survival-style 2D game developed using Python's Turtle Graphics library. Players control a human character who must collect diamonds while avoiding relentless zombies. The game features custom sprite graphics, multiple backgrounds, score bonuses, restart functionality, and win/lose screens.

---

## Features

### Gameplay

* Control a player character using the arrow keys.
* Collect diamonds scattered around the map.
* Earn bonus points after collecting every 10 diamonds.
* Avoid zombies that actively chase the player.
* Reach a score of **50 points** to win.

### Enemy AI

* Zombies continuously move toward the player's position.
* Zombie repulsion system prevents enemies from overlapping.
* Multiple zombies create increasing difficulty as they surround the player.

### User Interface

* Interactive start screen with click-to-play functionality.
* Real-time score tracking.
* Bonus achievement notifications.
* Custom Game Over screen.
* Victory screen when the goal is reached.
* Restart and Quit options after winning or losing.

### Graphics

* Custom player sprite (`human1.gif`)
* Custom zombie sprite (`zombie1.gif`)
* Custom diamond sprite (`diamond.gif`)
* Front-page background (`bg.gif`)
* Gameplay background (`bg1.gif`)
* Game-over/victory background (`game_over_bg.gif`)

---

## Requirements

* Python 3.x
* Turtle Graphics (included with Python)

---

## Project Files

```text
ExileZone/
│
├── exile_zone.py
├── human1.gif
├── zombie1.gif
├── diamond.gif
├── bg.gif
├── bg1.gif
├── game_over_bg.gif
└── README.md
```

---

## Installation

### 1. Download the Project

Clone the repository or download the project files.

```bash
git clone <https://github.com/Mehtabwho/CSE-Lab-Courses/edit/main/5th-sem/AILab>
```

### 2. Navigate to the Project Folder

```bash
cd ExileZone
```

### 3. Ensure All Assets Exist

The following files must be located in the same directory as the Python script:

```text
human1.gif
zombie1.gif
diamond.gif
bg.gif
bg1.gif
game_over_bg.gif
```

### 4. Run the Game

```bash
python finalproject.py
```

---

## Controls

| Key         | Action     |
| ----------- | ---------- |
| Up Arrow    | Move Up    |
| Down Arrow  | Move Down  |
| Left Arrow  | Move Left  |
| Right Arrow | Move Right |

---

## Scoring System

| Action                     | Points   |
| -------------------------- | -------- |
| Collect 1 Diamond          | +1       |
| Every 10 Diamonds Collected | +2 Bonus |

Example:

* Collect 10 diamonds → 10 points
* Bonus awarded → +2 points
* Total = 12 points

---

## Winning Condition

The player wins when the score reaches:

```text
50 Points
```

A victory screen appears with options to:

* Restart
* Quit

---

## Losing Condition

The game ends when a zombie touches the player.

When defeated:

* Gameplay elements are hidden.
* A Game Over background is displayed.
* A message appears:

  * "Caught by a zombie!"
* The player can:

  * Restart the game
  * Quit the game

---

## Game Flow

### Start Screen

1. Game launches with `bg.gif`.
2. Message displayed:

   * "Click anywhere to play"

### Gameplay

1. Background changes to `bg1.gif`.
2. Zombies begin chasing the player.
3. Diamonds can be collected for points.

### Game Over

1. Player collides with a zombie.
2. Background changes to `game_over_bg.gif`.
3. Restart/Quit options appear.

### Victory

1. Player reaches 50 points.
2. Background changes to `game_over_bg.gif`.
3. "Goal Reached!" message appears.
4. Restart/Quit options appear.

---

## Technical Details

### Libraries Used

```python
turtle
random
math
```

### Main Components

#### Player System

* Keyboard-controlled movement.
* Smooth directional movement using key press and release events.

#### Zombie AI

* Tracks player position.
* Uses directional movement toward the player.
* Includes collision avoidance between zombies.

#### Resource System

* Random diamond spawning.
* Automatic repositioning after collection.

#### UI System

* Score display.
* Bonus notifications.
* Front page.
* Victory screen.
* Game over screen.

---

## Future Improvements

Potential enhancements include:

* Multiple difficulty levels
* Sound effects and background music
* Health and lives system
* Power-ups and abilities
* High-score leaderboard
* Different zombie types
* Obstacles and map boundaries
* Animated sprites
* Save/load functionality
* Pause menu

---

## Author

Created as a Python Turtle Graphics game project.

---

## License

This project is provided for educational and personal use. Feel free to modify and expand it for learning purposes.

import turtle
import random
import math

# Set up the screen
screen = turtle.Screen()
screen.bgcolor("black")
screen.setup(width=600, height=600)
screen.title("Exile Zone")
screen.tracer(0)

# Register custom shapes
screen.register_shape("human1.gif")  # Replace with your human image
screen.register_shape("zombie1.gif")  # Replace with your zombie image
screen.register_shape("diamond.gif")  # Replace with your diamond image

# Register background images
screen.bgpic("bg.gif")  # Front page background
game_background = "bg1.gif"  # Gameplay background
game_over_background = "game_over_bg.gif"  # Game over background

# Create the diamond shape
diamond_points = ((0, 10), (10, 0), (0, -10), (-10, 0))
screen.register_shape("diamond", diamond_points)

# Create the player
player = turtle.Turtle()
player.shape("human1.gif")  # Use custom human shape
player.shapesize(stretch_wid=0.5, stretch_len=0.5)  # Scale down the player
player.penup()
player.speed(0)
player.goto(-100, -100)

# Create the zombies
zombies = []
for _ in range(3):
    zombie = turtle.Turtle()
    zombie.shape("zombie1.gif")  # Use custom zombie shape
    zombie.shapesize(stretch_wid=0.5, stretch_len=0.5)  # Scale down the zombies
    zombie.penup()
    zombie.speed(0)
    zombie.goto(random.randint(-250, 250), random.randint(-250, 250))
    zombies.append(zombie)

# Create resources (diamonds)
resources = []
for _ in range(5):
    resource = turtle.Turtle()
    resource.shape("diamond.gif")  # Use custom diamond shape
    resource.penup()
    resource.speed(0)
    resource.goto(random.randint(-250, 250), random.randint(-250, 250))
    resources.append(resource)

# Create the score display
score = 0
diamonds_collected = 0  # Counter for diamonds collected
score_display = turtle.Turtle()
score_display.color("black")
score_display.penup()
score_display.hideturtle()
score_display.goto(0, 260)

# Update the score display
def update_score():
    score_display.clear()
    score_display.write(f"Score: {score}", align="center", font=("Arial", 24, "bold"))

# Display bonus points message
bonus_message = turtle.Turtle()
bonus_message.color("black")
bonus_message.penup()
bonus_message.hideturtle()
bonus_message.goto(0, 230)

def show_bonus_message(n):
    bonus_message.clear()
    bonus_message.write(f"{n} diamonds collected!! 2 bonus points added!!", align="center", font=("Arial", 18, "bold"))
    screen.update()
    screen.ontimer(bonus_message.clear, 2000)  # Clear message after 2 seconds

# Player movement direction variables
move_directions = {"up": False, "down": False, "left": False, "right": False}

# Player movement functions
def start_move_up():
    move_directions["up"] = True

def start_move_down():
    move_directions["down"] = True

def start_move_left():
    move_directions["left"] = True

def start_move_right():
    move_directions["right"] = True

def stop_move_up():
    move_directions["up"] = False

def stop_move_down():
    move_directions["down"] = False

def stop_move_left():
    move_directions["left"] = False

def stop_move_right():
    move_directions["right"] = False

screen.listen()
screen.onkeypress(start_move_up, "Up")
screen.onkeyrelease(stop_move_up, "Up")
screen.onkeypress(start_move_down, "Down")
screen.onkeyrelease(stop_move_down, "Down")
screen.onkeypress(start_move_left, "Left")
screen.onkeyrelease(stop_move_left, "Left")
screen.onkeypress(start_move_right, "Right")
screen.onkeyrelease(stop_move_right, "Right")

# Check for collision with resources
def check_resource_collision():
    global score, diamonds_collected
    for resource in resources:
        if player.distance(resource) < 15:
            resource.goto(random.randint(-250, 250), random.randint(-250, 250))
            score += 1
            diamonds_collected += 1
            if diamonds_collected % 5 == 0:  # Check if 5 diamonds have been collected
                score += 2  # Add bonus points
                show_bonus_message(diamonds_collected)  # Show bonus message
            update_score()
            print("Diamond collected!")
            if score >= 50:
                show_goal_reached_box()
                return True
    return False

# Simple AI for zombie movement with repulsion
def zombie_move(zombie, zombies):
    player_x, player_y = player.position()
    zombie_x, zombie_y = zombie.position()

    # Move towards player
    if player_x > zombie_x:
        zombie_x += 5  # Increase the step size for faster movement
    elif player_x < zombie_x:
        zombie_x -= 5  # Increase the step size for faster movement

    if player_y > zombie_y:
        zombie_y += 5  # Increase the step size for faster movement
    elif player_y < zombie_y:
        zombie_y -= 5  # Increase the step size for faster movement

    # Repulsion from other zombies
    for other_zombie in zombies:
        if other_zombie != zombie:
            other_x, other_y = other_zombie.position()
            distance = math.sqrt((zombie_x - other_x)**2 + (zombie_y - other_y)**2)
            if distance < 50:  # Increased distance threshold for repulsion
                if zombie_x > other_x:
                    zombie_x += 4  # Increased repulsion step size
                else:
                    zombie_x -= 4

                if zombie_y > other_y:
                    zombie_y += 4
                else:
                    zombie_y -= 4

    zombie.goto(zombie_x, zombie_y)

# Update player's position based on the direction variables
def update_player_position():
    if move_directions["up"]:
        x, y = player.position()
        player.goto(x, y + 10)
    if move_directions["down"]:
        x, y = player.position()
        player.goto(x, y - 10)
    if move_directions["left"]:
        x, y = player.position()
        player.goto(x - 10, y)
    if move_directions["right"]:
        x, y = player.position()
        player.goto(x + 10, y)

# Function to show message box with options to restart or quit
def show_message_box():
    screen.bgpic(game_over_background)  # Set the game over background
    
    message_box = turtle.Turtle()
    message_box.color("black")
    message_box.penup()
    message_box.hideturtle()
    message_box.goto(0, 50)
    message_box.write("Caught by a zombie!", align="center", font=("Arial", 28, "bold"))

    # Create restart button
    restart_button = turtle.Turtle()
    restart_button.color("black")
    restart_button.penup()
    restart_button.goto(-100, -50)  # Move lower
    restart_button.write("Restart", align="center", font=("Arial", 20, "bold"))

    # Create quit button
    quit_button = turtle.Turtle()
    quit_button.color("black")
    quit_button.penup()
    quit_button.goto(100, -50)  # Move lower
    quit_button.write("Quit", align="center", font=("Arial", 20, "bold"))


    # Define click events for the buttons
    def restart_game(x, y):
        message_box.clear()
        restart_button.clear()
        quit_button.clear()
        restart_button.hideturtle()
        quit_button.hideturtle()
        restart_button.onclick(None)  # Remove the restart button event
        quit_button.onclick(None)  # Remove the quit button event
        reset_game()  # Reset the game
        screen.bgpic(game_background)  # Set the second background (gameplay)
        show_game_elements()  # Ensure game elements are shown
        game_loop()  # Restart the game loop

    def quit_game(x, y):
        turtle.bye()  # Quit the game

    restart_button.onclick(restart_game)
    quit_button.onclick(quit_game)
    screen.update()

# Function to show goal reached box with options to restart or quit
def show_goal_reached_box():
    screen.bgpic(game_over_background)  # Set the game over background
    
    goal_box = turtle.Turtle()
    goal_box.color("black")
    goal_box.penup()
    goal_box.hideturtle()
    goal_box.goto(0, 50)
    goal_box.write("Goal Reached!", align="center", font=("Arial", 28, "bold"))

    # Create restart button
    restart_button = turtle.Turtle()
    restart_button.color("black")
    restart_button.penup()
    restart_button.goto(-100, -50)
    restart_button.write("Restart", align="center", font=("Arial", 20, "bold"))

    # Create quit button
    quit_button = turtle.Turtle()
    quit_button.color("black")
    quit_button.penup()
    quit_button.goto(100, -50)
    quit_button.write("Quit", align="center", font=("Arial", 20, "bold"))

    # Define click events for the buttons
    def restart_game(x, y):
        goal_box.clear()
        restart_button.clear()
        quit_button.clear()
        restart_button.hideturtle()
        quit_button.hideturtle()
        reset_game()  # Reset the game
        screen.bgpic(game_background)  # Set the second background (gameplay)
        show_game_elements()  # Ensure game elements are shown
        game_loop()  # Restart the game loop

    def quit_game(x, y):
        turtle.bye()  # Quit the game

    restart_button.onclick(restart_game)
    quit_button.onclick(quit_game)
    screen.update()

# Function to reset the game
def reset_game():
    global score, diamonds_collected
    player.goto(-100, -100)
    for zombie in zombies:
        zombie.goto(random.randint(-250, 250), random.randint(-250, 250))
    for resource in resources:
        resource.goto(random.randint(-250, 250), random.randint(-250, 250))
    score = 0
    diamonds_collected = 0  # Reset the diamond counter
    update_score()

# Hide player, zombies, and diamonds during the game over
def hide_game_elements():
    player.hideturtle()
    for zombie in zombies:
        zombie.hideturtle()
    for resource in resources:
        resource.hideturtle()

# Show player, zombies, and diamonds after restart
def show_game_elements():
    player.showturtle()
    for zombie in zombies:
        zombie.showturtle()
    for resource in resources:
        resource.showturtle()

# Main game loop
def game_loop():
    if move_directions["up"] or move_directions["down"] or move_directions["left"] or move_directions["right"]:
        screen.bgpic(game_background)  # Change the background when game starts
    update_player_position()
    if check_resource_collision():
        return
    for zombie in zombies:
        zombie_move(zombie, zombies)
        if player.distance(zombie) < 15:
            print("Caught by a zombie!")
            hide_game_elements()  # Hide game elements
            show_message_box()  # Show message box when caught
            return
    screen.update()
    screen.ontimer(game_loop, 100)

# Function to display the front page
def show_front_page():
    front_page = turtle.Turtle()
    screen.colormode(255)  # Set color mode to 255 to use RGB values
    maroon = (128, 0, 0)  # RGB values for maroon
    front_page.color(maroon)
    front_page.penup()
    front_page.hideturtle()
    front_page.goto(0, 100)  # Adjusted position to be a little above center
    front_page.write("Click anywhere to play", align="center", font=("Arial", 20, "bold"))

    # Define the click event to start the game
    def start_game(x, y):
        screen.bgpic(game_background)  # Change the background
        front_page.clear()
        screen.onclick(None)  # Remove the click event
        score_display.showturtle()  # Show the score display when game starts
        show_game_elements()  # Show game elements
        game_loop()  # Start the game loop

    screen.onclick(start_game)  # Set up the click event to start the game

# Show the front page initially
show_front_page()
score_display.hideturtle()  # Hide the score display initially
screen.mainloop()

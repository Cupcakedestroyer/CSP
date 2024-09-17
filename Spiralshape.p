import turtle
import colorsys

screen = turtle.Screen()
screen.bgcolor("black")

spiral = turtle.Turtle()
spiral.speed(0)  
spiral.width(2)

def draw_spiral():
    num_colors = 36
    for i in range(360):
        
        color = colorsys.hsv_to_rgb(i / 360, 1.0, 1.0)
        spiral.pencolor(color)
        
        
        spiral.forward(i * 3 / num_colors + i)
        spiral.left(59)
        
    
        spiral.circle(i * 0.5)

draw_spiral()

spiral.hideturtle()
turtle.done()

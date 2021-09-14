import turtle
import socket
import math
import importlib
#from quad import setmode
quad = importlib.import_module("settingsld")
#import handler
#from numpy import *
# Graphing software experiment for
# Rvec module/port

turtle.speed(0)
turtle.tracer(n=2, delay=0)
turtle.shapesize(0.001)
turtle.ht()

plot_info = {
    "startpointx": 250,
    "startpointy": -250,
    "startdirection": 180,
    "modeturn": "cls.main.rt(90)",
    "endpointx": -250,
    "endpointy": -250,
    "y_line_1": -260,
    "y_line_2": -240,
    "x_line_1": -260,
    "x_line_2": -240,
    "start": -250,
    "end": -250,
    "mainstart": 500,
    "mainend": 500
}

solving_info = {
    "x_ratio": "500/cls.plot_x",
    "y_ratio": "500/cls.plot_y",
    "x_size": "cls.plot_x*10",
    "x": 0.01,
    "x_goto": "((x*x_ratio)+(-250))",
    "y_goto": "((cls.func*y_ratio)+(-250))",
    "adder": 0.1
}

settings = {
    "graph_type": 1,
    "extrapolate": True,
    "color": "white",
    "bgcolor": "black",
    "plot_x": 10,
    "plot_y": 10
}

func = {
    "choice": "math.log10(x)"
}

class info_settings:

    def __init__(self,graph_type=1,bgcolor=settings["bgcolor"],color=settings["color"], plot_x=settings["plot_x"], plot_y=settings["plot_y"]):
        self.graph_type = graph_type
        self.bgcolor = bgcolor
        self.color = color
        self.plot_x = plot_x
        self.plot_y = plot_y
        pass

    def check_str(self, x) -> str:
        self.x = x
        try:
            if (type(self.x) is str) == True:
                return (self.x)
            else:
                return "Error"
        except:
            return "Software Error"
        
    def check_int(self, x):
        self.x = x
        try:
            if (type(self.x) is int) == True:
                return (self.x)
            else:
                return "Error"
        except:
            return "Software Error"


class Window:
    # Creates a default turtle screen
    # Allows a test to be passed before running
    # The test method checks if the import/start
    # is operational before the 
    # main mathematical setup
    def __init__(cls,settings=settings):
        cls.test_build_method = "test_build"
        cls.settings = settings
    
    def check_run(cls):
        try:
            if test_build(cls.test_build_method) == True:
                return turtle.Screen()
        except:
            return("Setup Error")

    def window_settings(cls):
        height = 300
        width = 300
        window = cls.check_run()
        window.title("Rvec")
        window.screensize(width, height)
        window.bgcolor(cls.settings["bgcolor"])
        cls.plot_x = cls.settings["plot_x"]
        cls.plot_y = cls.settings["plot_y"]

    def plotter(cls):
        cls.main = turtle.Turtle()
        cls.main.ht() ; cls.main.penup()
        cls.main.color(cls.settings["color"])
        cls.main.pensize(2)
        if cls.settings["graph_type"] == 0:
            cls.main.penup() ; cls.main.goto(-250,0)
            cls.main.setheading(0) ; cls.main.pendown()
            cls.main.goto(250,0) ; cls.main.penup()
            cls.main.goto(0,-250) ; cls.main.pendown()
            cls.main.goto(0,250) ; cls.main.penup()
            start, end = -250, -250
            for _ in range(cls.plot_y+1):
                cls.main.goto(10, start)
                cls.main.pendown()
                cls.main.goto(-10, start)
                start += (500/cls.plot_y)
                cls.main.penup()
            for _ in range(cls.plot_x+1):
                cls.main.goto(end, 10)
                cls.main.pendown()
                cls.main.goto(end, -10)
                end += (500/cls.plot_x)
                cls.main.penup()
        else:
            quad.setmode(plot_info, cls.settings["graph_type"], solving_info)
            cls.main.penup() ; cls.main.goto((plot_info["startpointx"]),(plot_info["startpointy"]))
            cls.main.setheading((plot_info["startdirection"])) ; cls.main.pendown()
            for _ in range(2):
                cls.main.fd(500)
                eval(plot_info["modeturn"])
            cls.main.goto((plot_info["endpointx"]),(plot_info["endpointy"]))
            start, end = (plot_info["start"]), (plot_info["end"])
            for _ in range(cls.plot_y+1):
                cls.main.goto((plot_info["y_line_1"]), start)
                cls.main.pendown()
                cls.main.goto((plot_info["y_line_2"]), start)
                start += (plot_info["mainstart"]/(cls.plot_y))
                cls.main.penup()
            for _ in range(cls.plot_x+1):
                cls.main.goto(end, (plot_info["x_line_1"]))
                cls.main.pendown()
                cls.main.goto(end, (plot_info["x_line_2"]))
                end += (plot_info["mainend"]/cls.plot_x)
                cls.main.penup()

        #END
    def tool(cls):
        if cls.settings["graph_type"] == 0:
            x_ratio = 500/cls.plot_x
            y_ratio = 500/cls.plot_y
            cls.main.goto(-250,-250)
            x_size = cls.plot_x*5
            cls.main.penup()
            x = (0.01-(x_size*0.1))
            try:
                for _ in range(2):
                    for _ in range(x_size):
                        cls.func = eval(func["choice"])
                        cls.main.goto(((x*x_ratio)+(0)),((cls.func*y_ratio)+(0)))
                        cls.main.pendown()
                        x += 0.1
            except:
                x = 0.01
                for _ in range(x_size):
                    cls.func = eval(func["choice"])
                    cls.main.goto(((x*x_ratio)+(0)),((cls.func*y_ratio)+(0)))
                    cls.main.pendown()
                    x += 0.1
        else:
            try:
                x_ratio = eval(solving_info["x_ratio"])
                y_ratio = eval(solving_info["y_ratio"])
                cls.main.goto(-250,-250)
                cls.main.penup()
                x_size = eval(solving_info["x_size"])
                cls.main.penup()
                x = solving_info["x"]
                for _ in range(x_size):
                    cls.func = eval(func["choice"])
                    cls.main.goto(eval(solving_info["x_goto"]),(eval(solving_info["y_goto"])))
                    cls.main.pendown()
                    x += solving_info["adder"]
            except:
                pass

    def draw_plot(cls):
        cls.window_settings()
        cls.plotter()
        cls.tool()

def test_build(process_name):
    # Without holding a reference to our socket 
    # somewhere it gets garbage
    # collected when the function exits
    test_build._lock_socket = socket.socket(socket.AF_UNIX, socket.SOCK_DGRAM)

    try:
        # The null byte (\0) means 
        # the socket is created 
        # in the abstract namespace instead 
        # of being created 
        # on the file system itself.
        # Works only in Linux
        test_build._lock_socket.bind('\0' + process_name)
        return False
    except socket.error:
        return True

def set_bgcolor(bgcolor) -> str:
    settings["bgcolor"] = info_settings(bgcolor=bgcolor).check_str(bgcolor)

def set_color(color) -> str:
    settings["color"] = info_settings(color=color).check_str(color)

def set_x(x) -> int:
    settings["plot_x"] = info_settings(plot_x=x).check_int(x)

def set_y(y) -> int:
    settings["plot_y"] = info_settings(plot_y=y).check_int(y)

def setfunc(function) -> str:
    """Must input a string 
    
    i.e  "math.log10(x)"
    """
    func["choice"] = info_settings().check_str(function)

def set_mode(x) -> int:
    """ Between 0, 1, 2, 3, 4

    Although 0 is the best graph
    type.
    """
    settings["graph_type"] = x

def graph():
    while True:
        Window().draw_plot()

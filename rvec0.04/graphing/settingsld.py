def setmode(plot_info, x, stats):
    if x == 0:
        pass
    elif 0 > x and x > 4:
        return "ERROR"
    else:
        if x == 1:
            plot_info["startpointx"] = 250 ; plot_info["startpointy"] = -250
            plot_info["startdirection"] = 180 ; plot_info["modeturn"] = "cls.main.rt(90)"
            plot_info["endpointx"] = -250 ; plot_info["endpointy"] = -250
            plot_info["y_line_1"] = -260 ; plot_info["x_line_1"] = -260
            plot_info["y_line_2"] = -240 ; plot_info["x_line_2"] = -240
            plot_info["start"] = -250 ; plot_info["end"] = -250
            plot_info["mainstart"] = 500 ; plot_info["mainend"] = 500

            stats["x_ratio"] = "500/cls.plot_x" ; stats["y_ratio"] = "500/cls.plot_y"
            stats["x_size"] = "cls.plot_x*10" ; stats["x"] = 0.01
            stats["x_goto"] = "((x*x_ratio)+(-250))" ; stats["y_goto"] = "((cls.func*y_ratio)+(-250))"
            stats["adder"] = 0.1

        elif x == 2:
            plot_info["startpointx"] = -250 ; plot_info["startpointy"] = -250
            plot_info["startdirection"] = 0 ; plot_info["modeturn"] = "cls.main.lt(90)"
            plot_info["endpointx"] = 250 ; plot_info["endpointy"] = -250
            plot_info["y_line_1"] = 260 ; plot_info["x_line_1"] = -260
            plot_info["y_line_2"] = 240 ; plot_info["x_line_2"] = -240
            plot_info["start"] = -250 ; plot_info["end"] = 250
            plot_info["mainstart"] = 500 ; plot_info["mainend"] = -500

            stats["x_ratio"] = "500/cls.plot_x" ; stats["y_ratio"] = "500/cls.plot_y"
            stats["x_size"] = "cls.plot_x*10" ; stats["x"] = 0.01
            stats["x_goto"] = "((x*x_ratio)+(+250))" ; stats["y_goto"] = "((cls.func*y_ratio)+(-250))"
            stats["adder"] = -0.1

        elif x == 3:
            plot_info["startpointx"] = 250 ; plot_info["startpointy"] = -250
            plot_info["startdirection"] = 90 ; plot_info["modeturn"] = "cls.main.lt(90)"
            plot_info["endpointx"] = 250 ; plot_info["endpointy"] = 250
            plot_info["y_line_1"] = 260 ; plot_info["x_line_1"] = 260
            plot_info["y_line_2"] = 240 ; plot_info["x_line_2"] = 240
            plot_info["start"] = 250 ; plot_info["end"] = 250
            plot_info["mainstart"] = -500 ; plot_info["mainend"] = -500

            stats["x_ratio"] = "500/cls.plot_x" ; stats["y_ratio"] = "500/cls.plot_y"
            stats["x_size"] = "cls.plot_x*10" ; stats["x"] = 0.01
            stats["x_goto"] = "((x*x_ratio)+(+250))" ; stats["y_goto"] = "((cls.func*y_ratio)+(+250))"
            stats["adder"] = -0.1

        elif x == 4:
            plot_info["startpointx"] = -250 ; plot_info["startpointy"] = -250
            plot_info["startdirection"] = 90 ; plot_info["modeturn"] = "cls.main.rt(90)"
            plot_info["endpointx"] = -250 ; plot_info["endpointy"] = 250
            plot_info["y_line_1"] = -260 ; plot_info["x_line_1"] = 260
            plot_info["y_line_2"] = -240 ; plot_info["x_line_2"] = 240
            plot_info["start"] = 250 ; plot_info["end"] = -250
            plot_info["mainstart"] = -500 ; plot_info["mainend"] = 500

            stats["x_ratio"] = "500/cls.plot_x" ; stats["y_ratio"] = "500/cls.plot_y"
            stats["x_size"] = "cls.plot_x*10" ; stats["x"] = 0.01
            stats["x_goto"] = "((x*x_ratio)+(-250))" ; stats["y_goto"] = "((cls.func*y_ratio)+(+250))"
            stats["adder"] = 0.1

        else:
            return "ERROR"

    return plot_info, stats
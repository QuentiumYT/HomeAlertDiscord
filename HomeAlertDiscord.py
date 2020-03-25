#!/usr/bin/python3

from tkinter import *
from tkinter.ttk import *
from tkinter.messagebox import *
from PIL import Image, ImageTk
import os, dotenv

dotenv.load_dotenv(".env")
discord_bot_token = os.environ.get("TOKEN")
user_list = os.environ.get("USER_LIST").split(".")

# Using a 480x320 monitor on the Raspberry Pi (using fullscreen for release)
dev = True
w_width = 480
w_height = 320

f_desc = f_duration = f_when = f_priority = None

def usepic(pic, size):
    close_pic = Image.open(pic)
    close_pic2 = close_pic.resize((size, size), Image.ANTIALIAS)
    return ImageTk.PhotoImage(close_pic2)

class Tooltip:
    """
    Tooltip class to show a message when hover a widget
    """

    def __init__(self, widget, *, bg="#FFFFEA", pad=(5, 3, 5, 3), text="Tooltip info", waittime=400, wraplength=250):
        self.waittime = waittime
        self.wraplength = wraplength
        self.widget = widget
        self.text = text
        self.widget.bind("<Enter>", self.onEnter)
        self.widget.bind("<Leave>", self.onLeave)
        self.widget.bind("<ButtonPress>", self.onLeave)
        self.bg = bg
        self.pad = pad
        self.id = None
        self.tw = None

    def onEnter(self, event=None):
        self.schedule()

    def onLeave(self, event=None):
        self.unschedule()
        self.hide()

    def schedule(self):
        self.unschedule()
        self.id = self.widget.after(self.waittime, self.show)

    def unschedule(self):
        id_ = self.id
        self.id = None
        if id_:
            self.widget.after_cancel(id_)

    def show(self):
        def tip_pos_calculator(widget, label, *, tip_delta=(10, 5), pad=(5, 3, 5, 3)):
            w = widget
            s_width, s_height = w.winfo_screenwidth(), w.winfo_screenheight()
            width, height = (pad[0] + label.winfo_reqwidth() + pad[2], pad[1] + label.winfo_reqheight() + pad[3])

            mouse_x, mouse_y = w.winfo_pointerxy()
            x1, y1 = mouse_x + tip_delta[0], mouse_y + tip_delta[1]
            x2, y2 = x1 + width, y1 + height

            x_delta = x2 - s_width
            if x_delta < 0:
                x_delta = 0
            y_delta = y2 - s_height
            if y_delta < 0:
                y_delta = 0

            offscreen = (x_delta, y_delta) != (0, 0)
            if offscreen:
                if x_delta:
                    x1 = mouse_x - tip_delta[0] - width
                if y_delta:
                    y1 = mouse_y - tip_delta[1] - height

            offscreen_again = y1 < 0

            if offscreen_again:
                y1 = 0

            return x1, y1

        bg = self.bg
        pad = self.pad
        widget = self.widget

        self.tw = Toplevel(widget)
        self.tw.wm_overrideredirect(True)

        win = Frame(self.tw, borderwidth=0)
        label = Label(win, text=self.text, justify=LEFT, background=bg, relief=SOLID, borderwidth=0, wraplength=self.wraplength)

        label.grid(padx=(pad[0], pad[2]), pady=(pad[1], pad[3]), sticky=NSEW)
        win.grid()

        x, y = tip_pos_calculator(widget, label)

        self.tw.wm_geometry("+%d+%d" % (x, y))

    def hide(self):
        tw = self.tw
        if tw:
            tw.destroy()
        self.tw = None

class Main:
    """Main selection window"""

    def __init__(self, master):
        self.master = master

        self.master.title("HomeAlertDiscord - Main")
        self.master.update_idletasks()
        if dev:
            x = (self.master.winfo_screenwidth() - w_width) // 2
            y = (self.master.winfo_screenheight() - w_height) // 2
            self.master.geometry("{}x{}+{}+{}".format(w_width, w_height, int(x), int(y)))
        else:
            self.master.overrideredirect(True)
            self.master.overrideredirect(False)
            self.master.attributes("-fullscreen", True)
        self.master.bind("<F11>", lambda event: self.master.attributes("-fullscreen", not self.master.attributes("-fullscreen")))
        self.master.bind("<Escape>", lambda event: self.master.destroy())
        self.master.resizable(width=False, height=False)

        self.quit_btn = Button(self.master)
        self.quit_btn.place(relx=0.0, rely=0.0, height=25, width=25)
        self.quit_btn.configure(cursor="tcross")
        self.pic1 = usepic("img/deny.png", 15)
        self.quit_btn.configure(image=self.pic1)
        self.quit_btn.configure(command=self.close)

        self.eat_starter = Button(self.master)
        self.eat_starter.place(relx=0.125, rely=0.156, height=85, width=85)
        self.pic_starter = usepic("img/starter.png", 75)
        self.eat_starter.configure(image=self.pic_starter)
        self.eat_starter.configure(cursor="target")
        self.eat_starter.configure(command=lambda: self.button_action("eat an appetizer"))

        self.eat_meal = Button(self.master)
        self.eat_meal.place(relx=0.417, rely=0.156, height=85, width=85)
        self.pic_meal = usepic("img/meal.png", 75)
        self.eat_meal.configure(image=self.pic_meal)
        self.eat_meal.configure(cursor="target")
        self.eat_meal.configure(command=lambda: self.button_action("eat the meal", True))

        self.eat_dessert = Button(self.master)
        self.eat_dessert.place(relx=0.708, rely=0.156, height=85, width=85)
        self.pic_dessert = usepic("img/dessert.png", 75)
        self.eat_dessert.configure(image=self.pic_dessert)
        self.eat_dessert.configure(cursor="target")
        self.eat_dessert.configure(command=lambda: self.button_action("eat dessert"))

        self.horizontal_sep = Separator(self.master)
        self.horizontal_sep.place(relx=0.123, rely=0.488, relwidth=0.75)

        self.watch_movie = Button(self.master)
        self.watch_movie.place(relx=0.125, rely=0.563, height=85, width=85)
        self.pic_movie = usepic("img/movie.png", 75)
        self.watch_movie.configure(image=self.pic_movie)
        self.watch_movie.configure(cursor="target")
        self.watch_movie.configure(command=lambda: self.button_action("watch a movie"))

        self.go_outside = Button(self.master)
        self.go_outside.place(relx=0.417, rely=0.563, height=85, width=85)
        self.pic_go = usepic("img/outside.png", 75)
        self.go_outside.configure(image=self.pic_go)
        self.go_outside.configure(cursor="target")
        self.go_outside.configure(command=lambda: self.button_action("go outside"))

        self.go_leave = Button(self.master)
        self.go_leave.place(relx=0.708, rely=0.563, height=85, width=85)
        self.pic_leave = usepic("img/leave.png", 75)
        self.go_leave.configure(image=self.pic_leave)
        self.go_leave.configure(cursor="target")
        self.go_leave.configure(command=lambda: self.button_action("leave the house", True))

    def close(self):
        # Stop bot here later
        self.master.destroy()

    def button_action(self, button_desc, important=False):
        global f_desc, f_priority
        f_desc = button_desc
        f_priority = important
        self.open_duration()

    def open_duration(self):
        self.duration_w = Toplevel()
        self.time_window = Time(self.duration_w, title="HomeAlertDiscord - Duration", w_count=1)

class Time:
    """Time selector window"""

    def __init__(self, top, title, w_count):
        self.top = top
        self.w_count = w_count
        self.title = title

        self.top.title(self.title)
        self.top.grab_set()
        self.top.focus()
        self.top.update_idletasks()
        if dev:
            x = (self.top.winfo_screenwidth() - w_width) // 2
            y = (self.top.winfo_screenheight() - w_height) // 2
            self.top.geometry("{}x{}+{}+{}".format(w_width, w_height, int(x), int(y)))
        else:
            self.top.overrideredirect(True)
            self.top.overrideredirect(False)
            self.top.attributes("-fullscreen", True)
        self.top.bind("<F11>", lambda event: self.top.attributes("-fullscreen", not self.top.attributes("-fullscreen")))
        self.top.bind("<Escape>", lambda event: self.top.destroy())
        self.top.resizable(width=False, height=False)

        self.quit_btn = Button(self.top)
        self.quit_btn.place(relx=0.0, rely=0.0, height=25, width=25)
        self.quit_btn.configure(cursor="tcross")
        self.pic1 = usepic("img/deny.png", 15)
        self.quit_btn.configure(image=self.pic1)
        self.quit_btn.configure(command=self.close)

        self.btn_0 = Button(self.top)
        self.btn_0.place(relx=0.063, rely=0.094, height=60, width=60)
        self.btn_0.configure(takefocus="")
        self.btn_0.configure(text="now")
        self.btn_0.configure(cursor="target")
        self.btn_0.configure(command=lambda: self.button_duration(self.btn_0.cget("text")))
        Tooltip(self.btn_0, text="Now", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")
        if self.w_count == 1:
            self.btn_0.configure(text="∞")
            Tooltip(self.btn_0, text="Undefined", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.btn_1 = Button(self.top)
        self.btn_1.place(relx=0.25, rely=0.094, height=60, width=60)
        self.btn_1.configure(takefocus="")
        self.btn_1.configure(text="1m")
        self.btn_1.configure(cursor="target")
        self.btn_1.configure(command=lambda: self.button_duration(self.btn_1.cget("text")))
        Tooltip(self.btn_1, text="1 minute", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.btn_3 = Button(self.top)
        self.btn_3.place(relx=0.438, rely=0.094, height=60, width=60)
        self.btn_3.configure(takefocus="")
        self.btn_3.configure(text="3m")
        self.btn_3.configure(cursor="target")
        self.btn_3.configure(command=lambda: self.button_duration(self.btn_3.cget("text")))
        Tooltip(self.btn_3, text="3 minutes", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.btn_5 = Button(self.top)
        self.btn_5.place(relx=0.625, rely=0.094, height=60, width=60)
        self.btn_5.configure(takefocus="")
        self.btn_5.configure(text="5m")
        self.btn_5.configure(cursor="target")
        self.btn_5.configure(command=lambda: self.button_duration(self.btn_5.cget("text")))
        Tooltip(self.btn_5, text="5 minutes", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.btn_15 = Button(self.top)
        self.btn_15.place(relx=0.813, rely=0.094, height=60, width=60)
        self.btn_15.configure(takefocus="")
        self.btn_15.configure(text="15m")
        self.btn_15.configure(cursor="target")
        self.btn_15.configure(command=lambda: self.button_duration(self.btn_15.cget("text")))
        Tooltip(self.btn_15, text="15 minutes", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.btn_20 = Button(self.top)
        self.btn_20.place(relx=0.063, rely=0.344, height=60, width=60)
        self.btn_20.configure(takefocus="")
        self.btn_20.configure(text="20m")
        self.btn_20.configure(cursor="target")
        self.btn_20.configure(command=lambda: self.button_duration(self.btn_20.cget("text")))
        Tooltip(self.btn_20, text="20 minutes", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.btn_30 = Button(self.top)
        self.btn_30.place(relx=0.25, rely=0.344, height=60, width=60)
        self.btn_30.configure(takefocus="")
        self.btn_30.configure(text="30m")
        self.btn_30.configure(cursor="target")
        self.btn_30.configure(command=lambda: self.button_duration(self.btn_30.cget("text")))
        Tooltip(self.btn_30, text="30 minutes", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.btn_60 = Button(self.top)
        self.btn_60.place(relx=0.438, rely=0.344, height=60, width=60)
        self.btn_60.configure(takefocus="")
        self.btn_60.configure(text="1h")
        self.btn_60.configure(cursor="target")
        self.btn_60.configure(command=lambda: self.button_duration(self.btn_60.cget("text")))
        Tooltip(self.btn_60, text="1 hour", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.btn_90 = Button(self.top)
        self.btn_90.place(relx=0.625, rely=0.344, height=60, width=60)
        self.btn_90.configure(takefocus="")
        self.btn_90.configure(text="1h30")
        self.btn_90.configure(cursor="target")
        self.btn_90.configure(command=lambda: self.button_duration(self.btn_90.cget("text")))
        Tooltip(self.btn_90, text="1 hour and a half", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.btn_120 = Button(self.top)
        self.btn_120.place(relx=0.813, rely=0.344, height=60, width=60)
        self.btn_120.configure(takefocus="")
        self.btn_120.configure(text="2h")
        self.btn_120.configure(cursor="target")
        self.btn_120.configure(command=lambda: self.button_duration(self.btn_120.cget("text")))
        Tooltip(self.btn_120, text="2 hours", bg="#FFFFEA", pad=(0, 0, 0, 0), waittime="400", wraplength="0")

        self.horizontal_sep = Separator(self.top)
        self.horizontal_sep.place(relx=0.063, rely=0.594, relwidth=0.875)

        self.minus_btn = Button(self.top)
        self.minus_btn.place(relx=0.208, rely=0.656, height=40, width=40)
        self.minus_btn.configure(takefocus="")
        self.minus_btn.configure(text="-")

        self.duration_txt = StringVar()
        self.duration_txt.set("2 minutes")
        self.duration_lenght = Entry(self.top)
        self.duration_lenght.place(relx=0.333, rely=0.656, relheight=0.125, relwidth=0.333)
        self.duration_lenght.configure(state="readonly")
        self.duration_lenght.configure(textvariable=self.duration_txt)
        self.duration_lenght.configure(takefocus="")
        self.duration_lenght.configure(cursor="xterm")

        self.plus_btn = Button(self.top)
        self.plus_btn.place(relx=0.708, rely=0.656, height=40, width=40)
        self.plus_btn.configure(takefocus="")
        self.plus_btn.configure(text="+")

        self.scale_val = IntVar()
        self.scale_val.set(50)
        self.scale_duration = Scale(self.top, from_=0, to=100)
        self.scale_duration.place(relx=0.083, rely=0.844, relwidth=0.833, relheight=0.0, height=26, bordermode="ignore")
        self.scale_duration.configure(variable=self.scale_val)
        self.scale_duration.configure(takefocus="")

    def close(self):
        self.top.destroy()

    def button_duration(self, duration):
        global f_duration, f_when
        if self.w_count == 1:
            f_duration = duration
        else:
            f_when = duration
        self.close()
        self.open_when()

    def open_when(self):
        if self.w_count == 1:
            self.w_when = Toplevel()
            self.time_window2 = Time(self.w_when, title="HomeAlertDiscord - When", w_count=2)
        else:
            ProcessData()

class ProcessData:
    def __init__(self):
        if f_priority:
            print(f"Warning: Going to {f_desc} for {f_duration} in {f_when}.")
        else:
            print(f"Suggestion: Asking to {f_desc} in {f_when} for {f_duration}.")

def main():
    root = Tk()
    main_window = Main(root)
    root.mainloop()

if __name__ == "__main__":
    main()

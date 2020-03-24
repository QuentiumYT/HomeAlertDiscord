#!/usr/bin/python3

from tkinter import *
from tkinter.ttk import *
from tkinter.messagebox import *
from tk_tools import *
from PIL import Image, ImageTk

dev = True
w_width = 480
w_height = 320

def usepic(pic, size):
    close_pic = Image.open(pic)
    close_pic2 = close_pic.resize((size, size), Image.ANTIALIAS)
    return ImageTk.PhotoImage(close_pic2)

class Main:
    def __init__(self, master):
        self.master = master

        master.update_idletasks()
        if dev:
            x = (master.winfo_screenwidth() - w_width) // 2
            y = (master.winfo_screenheight() - w_height) // 2
            master.geometry("{}x{}+{}+{}".format(w_width, w_height, int(x), int(y)))
        else:
            master.overrideredirect(True)
            master.overrideredirect(False)
            master.attributes("-fullscreen", True)
        master.bind("<F11>", lambda event: master.attributes("-fullscreen", not master.attributes("-fullscreen")))
        master.bind("<Escape>", lambda event: master.destroy())
        master.resizable(width=False, height=False)

        self.quit_btn = Button(master)
        self.quit_btn.place(relx=0.0, rely=0.0, height=25, width=25)
        self.quit_btn.configure(cursor="tcross")
        self.pic1 = usepic("img/deny.png", 15)
        self.quit_btn.configure(image=self.pic1)
        self.quit_btn.configure(command=self.close)

        self.eat_starter = Button(master)
        self.eat_starter.place(relx=0.125, rely=0.156, height=85, width=85)
        self.pic_starter = usepic("img/starter.png", 75)
        self.eat_starter.configure(image=self.pic_starter)
        self.eat_starter.configure(cursor="target")
        self.eat_starter.configure(command=self.open_duration)

        self.eat_meal = Button(master)
        self.eat_meal.place(relx=0.417, rely=0.156, height=85, width=85)
        self.pic_meal = usepic("img/meal.png", 75)
        self.eat_meal.configure(image=self.pic_meal)
        self.eat_meal.configure(cursor="target")

        self.eat_dessert = Button(master)
        self.eat_dessert.place(relx=0.708, rely=0.156, height=85, width=85)
        self.pic_dessert = usepic("img/dessert.png", 75)
        self.eat_dessert.configure(image=self.pic_dessert)
        self.eat_dessert.configure(cursor="target")

        self.horizontal_sep = Separator(master)
        self.horizontal_sep.place(relx=0.123, rely=0.488, relwidth=0.75)

        self.watch_movie = Button(master)
        self.watch_movie.place(relx=0.125, rely=0.563, height=85, width=85)
        self.pic_movie = usepic("img/movie.png", 75)
        self.watch_movie.configure(image=self.pic_movie)
        self.watch_movie.configure(cursor="target")

        self.go_outside = Button(master)
        self.go_outside.place(relx=0.417, rely=0.563, height=85, width=85)
        self.pic_go = usepic("img/outside.png", 75)
        self.go_outside.configure(image=self.pic_go)
        self.go_outside.configure(cursor="target")

        self.go_leave = Button(master)
        self.go_leave.place(relx=0.708, rely=0.563, height=85, width=85)
        self.pic_leave = usepic("img/leave.png", 75)
        self.go_leave.configure(image=self.pic_leave)
        self.go_leave.configure(cursor="target")

    def close(self):
        self.master.destroy()

    def open_duration(self):
        self.open_duration = Toplevel(self.master)
        self.main_window = Duration(self.open_duration)

class Duration:
    def __init__(self, master):
        self.master = master

        master.update_idletasks()
        master.grab_set()
        master.focus()
        if dev:
            x = (master.winfo_screenwidth() - w_width) // 2
            y = (master.winfo_screenheight() - w_height) // 2
            master.geometry("{}x{}+{}+{}".format(w_width, w_height, int(x), int(y)))
        else:
            master.overrideredirect(True)
            master.overrideredirect(False)
            master.attributes("-fullscreen", True)
        master.bind("<F11>", lambda event: master.attributes("-fullscreen", not master.attributes("-fullscreen")))
        master.bind("<Escape>", lambda event: master.destroy())
        master.resizable(width=False, height=False)

        self.btn_1 = Button(master)
        self.btn_1.place(relx=0.063, rely=0.094, height=60, width=60)
        self.btn_1.configure(takefocus="")
        self.btn_1.configure(text="1m")
        self.btn_1.configure(cursor="target")

        self.btn_3 = Button(master)
        self.btn_3.place(relx=0.25, rely=0.094, height=60, width=60)
        self.btn_3.configure(takefocus="")
        self.btn_3.configure(text="3m")
        self.btn_3.configure(cursor="target")

        self.btn_5 = Button(master)
        self.btn_5.place(relx=0.438, rely=0.094, height=60, width=60)
        self.btn_5.configure(takefocus="")
        self.btn_5.configure(text="5m")
        self.btn_5.configure(cursor="target")

        self.btn_10 = Button(master)
        self.btn_10.place(relx=0.625, rely=0.094, height=60, width=60)
        self.btn_10.configure(takefocus="")
        self.btn_10.configure(text="10m")
        self.btn_10.configure(cursor="target")

        self.btn_15 = Button(master)
        self.btn_15.place(relx=0.813, rely=0.094, height=60, width=60)
        self.btn_15.configure(takefocus="")
        self.btn_15.configure(text="15m")
        self.btn_15.configure(cursor="target")

        self.btn_20 = Button(master)
        self.btn_20.place(relx=0.063, rely=0.344, height=60, width=60)
        self.btn_20.configure(takefocus="")
        self.btn_20.configure(text="20m")
        self.btn_20.configure(cursor="target")

        self.btn_30 = Button(master)
        self.btn_30.place(relx=0.25, rely=0.344, height=60, width=60)
        self.btn_30.configure(takefocus="")
        self.btn_30.configure(text="30m")
        self.btn_30.configure(cursor="target")

        self.btn_60 = Button(master)
        self.btn_60.place(relx=0.438, rely=0.344, height=60, width=60)
        self.btn_60.configure(takefocus="")
        self.btn_60.configure(text="1h")
        self.btn_60.configure(cursor="target")

        self.btn_90 = Button(master)
        self.btn_90.place(relx=0.625, rely=0.344, height=60, width=60)
        self.btn_90.configure(takefocus="")
        self.btn_90.configure(text="1h30")
        self.btn_90.configure(cursor="target")

        self.btn_120 = Button(master)
        self.btn_120.place(relx=0.813, rely=0.344, height=60, width=60)
        self.btn_120.configure(takefocus="")
        self.btn_120.configure(text="2h")
        self.btn_120.configure(cursor="target")

        self.horizontal_sep = Separator(master)
        self.horizontal_sep.place(relx=0.063, rely=0.594, relwidth=0.875)

        self.minus_btn = Button(master)
        self.minus_btn.place(relx=0.208, rely=0.656, height=40, width=40)
        self.minus_btn.configure(takefocus="")
        self.minus_btn.configure(text="-")

        self.duration_txt = StringVar()
        self.duration_txt.set("2 minutes")
        self.duration_lenght = Entry(master)
        self.duration_lenght.place(relx=0.333, rely=0.656, relheight=0.125, relwidth=0.333)
        self.duration_lenght.configure(state="readonly")
        self.duration_lenght.configure(textvariable=self.duration_txt)
        self.duration_lenght.configure(background="#000000")
        self.duration_lenght.configure(takefocus="")
        self.duration_lenght.configure(cursor="xterm")

        self.plus_btn = Button(master)
        self.plus_btn.place(relx=0.708, rely=0.656, height=40, width=40)
        self.plus_btn.configure(takefocus="")
        self.plus_btn.configure(text="+")

        self.scale_duration = Scale(master, from_=0, to=100)
        self.scale_duration.place(relx=0.083, rely=0.844, relwidth=0.833, relheight=0.0, height=26, bordermode="ignore")
        self.scale_duration.configure(value="25")
        self.scale_duration.configure(takefocus="")

def main():
    root = Tk()
    root.title("HomeAlertDiscord")
    main_window = Main(root)
    root.mainloop()

if __name__ == "__main__":
    main()

#!/usr/bin/env python3

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

def main():
    root = Tk()
    root.title("HomeAlertDiscord")
    main_window = Main(root)
    root.mainloop()

if __name__ == "__main__":
    main()

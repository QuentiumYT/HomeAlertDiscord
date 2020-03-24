#############################################################################
# Generated by PAGE version 5.0.3
#  in conjunction with Tcl version 8.6
#  Mar 23, 2020 08:49:41 PM CET  platform: Windows NT
set vTcl(timestamp) ""


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top43 {base} {
    global vTcl
    if {$base == ""} {
        set base .top43
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m58" -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 480x320+707+299
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 5124 1062
    wm minsize $top 116 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "New Toplevel"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu49 \
        -takefocus {} -cursor fleur 
    vTcl:DefineAlias "$top.tBu49" "Starter" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu51 \
        -takefocus {} 
    vTcl:DefineAlias "$top.tBu51" "Meal" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu52 \
        -takefocus {} 
    vTcl:DefineAlias "$top.tBu52" "Dessert" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu53 \
        -takefocus {} 
    vTcl:DefineAlias "$top.tBu53" "GoAll" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu54 \
        -takefocus {} 
    vTcl:DefineAlias "$top.tBu54" "Film" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu55 \
        -takefocus {} 
    vTcl:DefineAlias "$top.tBu55" "Leave" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu56 \
        -takefocus {} 
    vTcl:DefineAlias "$top.tBu56" "Quit" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe57
    vTcl:DefineAlias "$top.tSe57" "Separator1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.m58
    menu $site_3_0 \
        -activebackground SystemHighlight \
        -activeforeground SystemHighlightText \
        -background $vTcl(pr,menubgcolor) -font TkDefaultFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tBu49 \
        -in $top -x 0 -relx 0.125 -y 0 -rely 0.156 -width 85 -relwidth 0 \
        -height 85 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu51 \
        -in $top -x 0 -relx 0.417 -y 0 -rely 0.156 -width 85 -relwidth 0 \
        -height 85 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu52 \
        -in $top -x 0 -relx 0.708 -y 0 -rely 0.156 -width 85 -relwidth 0 \
        -height 85 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu53 \
        -in $top -x 0 -relx 0.125 -y 0 -rely 0.563 -width 85 -relwidth 0 \
        -height 85 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu54 \
        -in $top -x 0 -relx 0.417 -y 0 -rely 0.563 -width 85 -relwidth 0 \
        -height 85 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu55 \
        -in $top -x 0 -relx 0.708 -y 0 -rely 0.563 -width 85 -relwidth 0 \
        -height 85 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu56 \
        -in $top -x 0 -y 0 -width 25 -relwidth 0 -height 25 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tSe57 \
        -in $top -x 0 -relx 0.123 -y 0 -rely 0.488 -width 0 -relwidth 0.75 \
        -height 0 -relheight 0.006 -anchor nw -bordermode inside 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top43 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

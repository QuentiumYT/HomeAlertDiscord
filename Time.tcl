#############################################################################
# Generated by PAGE version 5.0.3
#  in conjunction with Tcl version 8.6
#  Apr 07, 2020 12:44:01 PM CEST  platform: Windows NT
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




proc vTclWindow.top46 {base} {
    global vTcl
    if {$base == ""} {
        set base .top46
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 480x320+688+333
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
    ttk::button $top.tBu48 \
        -takefocus {} -text 1m -cursor target 
    vTcl:DefineAlias "$top.tBu48" "1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu48 <<SetBalloon>> {
        set ::vTcl::balloon::%W {1 minute}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu56 \
        -takefocus {} -text 3m -cursor target 
    vTcl:DefineAlias "$top.tBu56" "3" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu56 <<SetBalloon>> {
        set ::vTcl::balloon::%W {3 minutes}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu57 \
        -takefocus {} -text 5m -cursor target 
    vTcl:DefineAlias "$top.tBu57" "5" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu57 <<SetBalloon>> {
        set ::vTcl::balloon::%W {5 minutes}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu58 \
        -takefocus {} -text 10m -cursor target 
    vTcl:DefineAlias "$top.tBu58" "10" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu58 <<SetBalloon>> {
        set ::vTcl::balloon::%W {10 minutes}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu59 \
        -takefocus {} -text 15m -cursor fleur 
    vTcl:DefineAlias "$top.tBu59" "15" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu59 <<SetBalloon>> {
        set ::vTcl::balloon::%W {15 minutes}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu60 \
        -takefocus {} -text 20m -cursor target 
    vTcl:DefineAlias "$top.tBu60" "20" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu60 <<SetBalloon>> {
        set ::vTcl::balloon::%W {20 minutes}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu61 \
        -takefocus {} -text 30m -cursor target 
    vTcl:DefineAlias "$top.tBu61" "30" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu61 <<SetBalloon>> {
        set ::vTcl::balloon::%W {30 minutes}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu62 \
        -takefocus {} -text 1h -cursor target 
    vTcl:DefineAlias "$top.tBu62" "60" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu62 <<SetBalloon>> {
        set ::vTcl::balloon::%W {1 hour}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu63 \
        -takefocus {} -text 1h30 -cursor target 
    vTcl:DefineAlias "$top.tBu63" "90" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu63 <<SetBalloon>> {
        set ::vTcl::balloon::%W {1 hour and a half}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu64 \
        -takefocus {} -text 2h -cursor target 
    vTcl:DefineAlias "$top.tBu64" "120" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu64 <<SetBalloon>> {
        set ::vTcl::balloon::%W {2 hours}
    }
    ttk::scale $top.tSc65 \
        -to 100 -value 50 -length 100 -takefocus {} 
    vTcl:DefineAlias "$top.tSc65" "TScale1" vTcl:WidgetProc "Toplevel1" 1
    ttk::entry $top.tEn66 \
        -font TkTextFont -state readonly -textvariable duration_txt \
        -foreground {} -background #000000 -cursor xterm 
    vTcl:DefineAlias "$top.tEn66" "TEntry1" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe68
    vTcl:DefineAlias "$top.tSe68" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu69 \
        -takefocus {} -text - 
    vTcl:DefineAlias "$top.tBu69" "minus_btn" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu70 \
        -takefocus {} -text + 
    vTcl:DefineAlias "$top.tBu70" "plus_btn" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu44 \
        -takefocus {} -text ✓ 
    vTcl:DefineAlias "$top.tBu44" "TButton1" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $top.tLa44 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font {-family {Shentox 12} -size 12 -weight bold} -relief flat \
        -anchor center -justify left -text {Select the duration} 
    vTcl:DefineAlias "$top.tLa44" "TLabel1" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu45 \
        -takefocus {} -text X 
    vTcl:DefineAlias "$top.tBu45" "TButton2" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu46 \
        -takefocus {} -text I 
    vTcl:DefineAlias "$top.tBu46" "TButton2_1" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tBu48 \
        -in $top -x 0 -relx 0.063 -y 0 -rely 0.119 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu56 \
        -in $top -x 0 -relx 0.25 -y 0 -rely 0.119 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu57 \
        -in $top -x 0 -relx 0.438 -y 0 -rely 0.119 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu58 \
        -in $top -x 0 -relx 0.625 -y 0 -rely 0.119 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu59 \
        -in $top -x 0 -relx 0.813 -y 0 -rely 0.119 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu60 \
        -in $top -x 0 -relx 0.063 -y 0 -rely 0.363 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu61 \
        -in $top -x 0 -relx 0.25 -y 0 -rely 0.363 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu62 \
        -in $top -x 0 -relx 0.438 -y 0 -rely 0.363 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu63 \
        -in $top -x 0 -relx 0.625 -y 0 -rely 0.363 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu64 \
        -in $top -x 0 -relx 0.813 -y 0 -rely 0.363 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tSc65 \
        -in $top -x 0 -relx 0.083 -y 0 -rely 0.844 -width 0 -relwidth 0.833 \
        -anchor nw -bordermode ignore 
    place $top.tEn66 \
        -in $top -x 0 -relx 0.229 -y 0 -rely 0.656 -width 0 -relwidth 0.333 \
        -height 0 -relheight 0.125 -anchor nw -bordermode ignore 
    place $top.tSe68 \
        -in $top -x 0 -relx 0.063 -y 0 -rely 0.594 -width 0 -relwidth 0.875 \
        -height 0 -relheight 0.006 -anchor nw -bordermode inside 
    place $top.tBu69 \
        -in $top -x 0 -relx 0.104 -y 0 -rely 0.656 -width 40 -relwidth 0 \
        -height 40 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu70 \
        -in $top -x 0 -relx 0.604 -y 0 -rely 0.656 -width 40 -relwidth 0 \
        -height 40 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu44 \
        -in $top -x 0 -relx 0.771 -y 0 -rely 0.625 -width 60 -relwidth 0 \
        -height 60 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tLa44 \
        -in $top -x 0 -relx 0.292 -y 0 -rely 0.019 -width 0 -relwidth 0.406 \
        -height 0 -relheight 0.059 -anchor nw -bordermode ignore 
    place $top.tBu45 \
        -in $top -x 0 -y 0 -width 25 -relwidth 0 -anchor nw \
        -bordermode ignore 
    place $top.tBu46 \
        -in $top -x 0 -relx 0.948 -y 0 -width 25 -relwidth 0 -height 25 \
        -relheight 0 -anchor nw -bordermode ignore 
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
Window show .top46 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}


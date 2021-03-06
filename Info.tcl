#############################################################################
# Generated by PAGE version 5.0.3
#  in conjunction with Tcl version 8.6
#  Apr 07, 2020 12:42:54 PM CEST  platform: Windows NT
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
        -menu "$top.m55" -background $vTcl(actual_gui_bg) \
        -highlightbackground #f0f0f0f0f0f0 -highlightcolor #646464646464 
    wm focusmodel $top passive
    wm geometry $top 380x220+809+359
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 5124 1062
    wm minsize $top 116 1
    wm overrideredirect $top 0
    wm resizable $top 0 0
    wm deiconify $top
    wm title $top "Informations"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    ttk::label $top.tLa47 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -anchor center -text LOGO 
    vTcl:DefineAlias "$top.tLa47" "picture" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $top.tLa51 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font {-family {Segoe UI} -size 14 -weight bold} -relief flat \
        -anchor w -justify left -text HomeAlertDiscord 
    vTcl:DefineAlias "$top.tLa51" "title" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $top.tLa52 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -anchor w -justify left \
        -text {Copyright © 2020 Quentin L} 
    vTcl:DefineAlias "$top.tLa52" "copyright" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.m55
    menu $site_3_0 \
        -activebackground SystemHighlight \
        -activeforeground SystemHighlightText \
        -background $vTcl(pr,menubgcolor) -font TkDefaultFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    ttk::separator $top.tSe56
    vTcl:DefineAlias "$top.tSe56" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $top.tLa57 \
        -background $vTcl(actual_gui_bg) -foreground $vTcl(actual_gui_fg) \
        -font TkDefaultFont -relief flat -anchor w -justify left \
        -text {Support and contact:} 
    vTcl:DefineAlias "$top.tLa57" "support" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $top.tLa58 \
        -background $vTcl(actual_gui_bg) -foreground blue -font TkDefaultFont \
        -relief flat -anchor w -justify left -text https://quentium.fr/en/ \
        -cursor hand2 
    vTcl:DefineAlias "$top.tLa58" "website" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $top.tLa59 \
        -background $vTcl(actual_gui_bg) -foreground blue -font TkDefaultFont \
        -relief flat -anchor w -justify left \
        -text https://github.com/QuentiumYT -cursor hand2 
    vTcl:DefineAlias "$top.tLa59" "github" vTcl:WidgetProc "Toplevel1" 1
    ttk::label $top.tLa60 \
        -background $vTcl(actual_gui_bg) -foreground blue -font TkDefaultFont \
        -relief flat -anchor w -justify left -text {PayPal Donation} \
        -cursor hand2 
    vTcl:DefineAlias "$top.tLa60" "paypal" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe61
    vTcl:DefineAlias "$top.tSe61" "TSeparator2" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tLa47 \
        -in $top -x 0 -relx 0.053 -y 0 -rely 0.136 -width 0 -relwidth 0.289 \
        -height 0 -relheight 0.455 -anchor nw -bordermode ignore 
    place $top.tLa51 \
        -in $top -x 0 -relx 0.395 -y 0 -rely 0.091 -width 0 -relwidth 0.463 \
        -height 0 -relheight 0.132 -anchor nw -bordermode ignore 
    place $top.tLa52 \
        -in $top -x 0 -relx 0.395 -y 0 -rely 0.273 -width 0 -relwidth 0.403 \
        -height 0 -relheight 0.086 -anchor nw -bordermode ignore 
    place $top.tSe56 \
        -in $top -x 0 -relx 0.395 -y 0 -rely 0.409 -width 0 -relwidth 0.526 \
        -height 0 -relheight 0.009 -anchor nw -bordermode inside 
    place $top.tLa57 \
        -in $top -x 0 -relx 0.395 -y 0 -rely 0.455 -width 0 -relwidth 0.324 \
        -height 0 -relheight 0.086 -anchor nw -bordermode ignore 
    place $top.tLa58 \
        -in $top -x 0 -relx 0.395 -y 0 -rely 0.591 -width 0 -relwidth 0.35 \
        -height 0 -relheight 0.086 -anchor nw -bordermode ignore 
    place $top.tLa59 \
        -in $top -x 0 -relx 0.395 -y 0 -rely 0.682 -width 0 -relwidth 0.482 \
        -height 0 -relheight 0.086 -anchor nw -bordermode ignore 
    place $top.tLa60 \
        -in $top -x 0 -relx 0.395 -y 0 -rely 0.864 -width 0 -relwidth 0.245 \
        -height 0 -relheight 0.086 -anchor nw -bordermode ignore 
    place $top.tSe61 \
        -in $top -x 0 -relx 0.395 -y 0 -rely 0.818 -width 0 -relwidth 0.526 \
        -height 0 -relheight 0.009 -anchor nw -bordermode inside 
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


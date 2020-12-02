$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_2 from commandbutton within w_main
end type
type sle_1 from singlelineedit within w_main
end type
type cb_1 from commandbutton within w_main
end type
type dw_1 from datawindow within w_main
end type
end forward

global type w_main from window
integer width = 1271
integer height = 1148
boolean titlebar = true
string title = "Count Distinct Value In DataWindow"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
sle_1 sle_1
cb_1 cb_1
dw_1 dw_1
end type
global w_main w_main

on w_main.create
this.cb_2=create cb_2
this.sle_1=create sle_1
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_2,&
this.sle_1,&
this.cb_1,&
this.dw_1}
end on

on w_main.destroy
destroy(this.cb_2)
destroy(this.sle_1)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_2 from commandbutton within w_main
integer x = 974
integer y = 928
integer width = 247
integer height = 108
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Reset"
end type

event clicked;dw_1.reset()
end event

type sle_1 from singlelineedit within w_main
integer x = 23
integer y = 932
integer width = 745
integer height = 104
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_main
integer x = 773
integer y = 928
integer width = 197
integer height = 108
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "ADD"
end type

event clicked;dw_1.SetItem(dw_1.InsertRow(0), "as_value", sle_1.Text)

end event

type dw_1 from datawindow within w_main
integer x = 18
integer y = 28
integer width = 1198
integer height = 892
integer taborder = 10
string title = "none"
string dataobject = "d_value"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type


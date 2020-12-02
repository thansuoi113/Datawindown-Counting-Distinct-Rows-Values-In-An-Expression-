$PBExportHeader$countdistinctvaluedw.sra
$PBExportComments$Generated Application Object
forward
global type countdistinctvaluedw from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type countdistinctvaluedw from application
string appname = "countdistinctvaluedw"
end type
global countdistinctvaluedw countdistinctvaluedw

on countdistinctvaluedw.create
appname="countdistinctvaluedw"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on countdistinctvaluedw.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_main)
end event


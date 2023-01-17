#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Patalimpa.ico
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_UseX64=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <Misc.au3>

HotKeySet("{PGUP}", "SAIR")

Local $sumonar = 0, $var = 0, $tempo = 0, $intervalo = 0, $ativar = 0, $lercheck1=4, $hWnd=0

#Region ### START Koda GUI section ### Form=
$Form1_1_1 = GUICreate("Auto-Summon - By Zezin", 199, 153, 811, 0)
$Input1 = GUICtrlCreateInput("SD - Asgard", 61, 7, 121, 21)
$Label1 = GUICtrlCreateLabel("Janela:", 6, 10, 41, 17)
$Input2 = GUICtrlCreateInput("1", 101, 36, 41, 21)
$Input3 = GUICtrlCreateInput("6", 147, 68, 33, 21)
$Label2 = GUICtrlCreateLabel("Slot do Summon:", 8, 40, 87, 17)
$Label4 = GUICtrlCreateLabel("(1-5)", 147, 39, 28, 15)
$Label3 = GUICtrlCreateLabel("Intervalo entre (s):", 8, 72, 132, 17)
$Button1 = GUICtrlCreateButton("Ativar", 56, 120, 75, 25)
$Button2 = GUICtrlCreateButton("Desativar", 56, 120, 75, 25)
GUICtrlSetState(-1, $GUI_HIDE)
$Checkbox1 = GUICtrlCreateCheckbox("Auto-Grupo", 8, 98, 81, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		 Case $Button1
		 botao1()
		 Case $Button2
		 botao2()
		 Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch

   $nome=GUICtrlRead($Input1)
   $Slot=GUICtrlRead($Input2)
   $Intervalo=GUICtrlRead($Input3)
   $lercheck1=GUICtrlRead($Checkbox1)

   If $ativar == 1 Then
	  Sumonar()
   EndIf

   If $var == 1 Then
	  If TimerDiff($tempo) > $Intervalo * 1000 Then        ; Verifica o tempo transcorrido e reinicia-o ao chegar no tempo marcado na checkbox
		 CicloIniciado()
		 $var = 0
	  EndIf
   EndIf

   If $lercheck1 == 1 Then
	  AutoGrupo()
   EndIf

WEnd

Func CicloIniciado()
   IniciarTimer()
   $ativar = 1
EndFunc

Func botao1()
   CicloIniciado()
   GUICtrlSetState($Button1, $GUI_HIDE)
   GUICtrlSetState($Button2, $GUI_SHOW)
EndFunc

Func botao2()
   $var = 0
   GUICtrlSetState($Button2, $GUI_HIDE)
   GUICtrlSetState($Button1, $GUI_SHOW)
EndFunc

Func Sumonar()
	$hWnd = WinGetHandle($nome, "")
	  If $Slot == 1 then
		 ;ControlSend($hWnd, "", "", "{1}")
		 ;ou
		 ControlClick($hWnd, "", "", "left", 1, 375-3, 600-25)
	  EndIf
	  If $Slot == 2 then
		 ;ControlSend($hWnd, "", "", "{2}")
		 ;ou
		 ControlClick($hWnd, "", "", "left", 1, 400-3, 600-25)
	  EndIf
	  If $Slot == 3 then
		 ;ControlSend($hWnd, "", "", "{3}")
		 ;ou
		 ControlClick($hWnd, "", "", "left", 1, 425-3, 600-25)
	  EndIf
	  If $Slot == 4 then
		 ;ControlSend($hWnd, "", "", "{4}")
		 ;ou
		 ControlClick($hWnd, "", "", "left", 1, 450-3, 600-25)
	  EndIf
	  If $Slot == 5 then
		 ;ControlSend($hWnd, "", "", "{5}")
		 ;ou
		 ControlClick($hWnd, "", "", "left", 1, 475-3, 600-25)
	  EndIf
	  sleep(400)
	  ;ControlClick($hWnd, "", "", "right", 1, 369-3, 366-25)  ;clica num lugar qlqr do mapa
	  MouseClick("right", 730, 513, 1, 0)
	  sleep(100)
	  MouseClick("right", 730, 513, 1, 0)
	  sleep(100)
	  MouseClick("right", 730, 513, 1, 0)
	  sleep(100)
	  MouseClick("right", 730, 513, 1, 0)
	  sleep(100)
	  MouseClick("right", 730, 513, 1, 0)
	  sleep(100)
	  MouseClick("right", 730, 513, 1, 0)
	  sleep(100)
	  ;sleep(100)
	 ; ControlClick($hWnd, "", "", "right", 1, 746-3, 537-25)
	  ;sleep(100)
	  ;ControlClick($hWnd, "", "", "right", 1, 746-3, 537-25)
	  ;sleep(100)
	  ;ControlClick($hWnd, "", "", "right", 1, 746-3, 537-25)
	  ;sleep(100)
	  ;ControlClick($hWnd, "", "", "right", 1, 746-3, 537-25)
	  ;sleep(100)
	  ;ControlClick($hWnd, "", "", "right", 1, 746-3, 537-25)
	  ;sleep(100)
	  ;ControlClick($hWnd, "", "", "right", 1, 746-3, 537-25)
		 ;$x = $x + 1
		 ;If $x == $Quant Then
			;$desagrupar = 0              ;CONTADOR (desativado)
			;$x = 0
		 ;EndIf

	  ConsoleWrite($Intervalo)
	  $ativar = 0
	  $var = 1
EndFunc

Func AutoGrupo()
   ControlClick($hWnd, "", "", "left", 1, 54-3, 182-25)
   sleep(1000)
EndFunc

Func IniciarTimer()                                        ;Função de Timer
   $tempo=TimerInit()
EndFunc

Func SAIR()
   Exit
EndFunc
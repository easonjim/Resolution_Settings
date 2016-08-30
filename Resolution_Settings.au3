#NoTrayIcon
#Region ;**** ���������� ACNWrapper_GUI ****
#AutoIt3Wrapper_icon=
#AutoIt3Wrapper_outfile=Resolution_Settings.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Comment=Resolution_Settings
#AutoIt3Wrapper_Res_Description=Resolution_Settings
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_LegalCopyright=Resolution_Settings
#EndRegion ;**** ���������� ACNWrapper_GUI ****
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#Include <WinAPIEx.au3>
#Include <GuiListView.au3>
#Include <ACN_MISC.au3>
#include <ComboConstants.au3>
Global $DesktopWidth = @DesktopWidth , $DesktopHeight = @DesktopHeight , $DesktopDepth = @DesktopDepth , $DesktopRefresh = @DesktopRefresh 
Global $Systemtools = "C:\Windows\Temp"
FileInstall("Ini\Resolution.ini",$Systemtools & "\Resolution.ini",1)
Global $Fb = IniReadSection($Systemtools & "\Resolution.ini","Resolution")
#Region ### START Koda GUI section ###
$Form1_1 = GUICreate("Resolution_Settings", 500, 250, -1, -1)
GUICtrlSetFont(-1, 9, 400, 0, "Arial")
$ListView2 = GUICtrlCreateListView("��Ļ���|��Ļ�߶�|������ɫ���|��Ļˢ����", 115, 25, 370, 50)
GUICtrlCreateListViewItem($DesktopWidth & "|" & $DesktopHeight & "|" & $DesktopDepth & "|" & $DesktopRefresh,$ListView2)
$Label1 = GUICtrlCreateLabel("��ǰ�ֱ��ʣ�", 20, 30, 140, 33)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Button40 = GUICtrlCreateButton("��  ��", 80, 200, 121, 33)
$Button41 = GUICtrlCreateButton("��  ��", 280, 200, 121, 33)
HotKeySet("^r","huifu")
$Label2 = GUICtrlCreateLabel("���÷ֱ��ʣ�", 20, 90, 140, 33)
GUICtrlSetFont(-1, 11, 400, 0, "����")
$Combo1 = GUICtrlCreateCombo("",115, 87, 370, 25,$CBS_DROPDOWNLIST)
GUICtrlSetData($Combo1,$Fb[1][0]&"|"&$Fb[2][0]&"|"&$Fb[3][0]&"|"&$Fb[4][0]&"|"&$Fb[5][0]&"|"&$Fb[6][0]&"|"&$Fb[7][0]&"|"&$Fb[8][0]&"|"&$Fb[9][0]&"|"&$Fb[10][0]&"|"&$Fb[11][0]&"|"&$Fb[12][0]&"|"&$Fb[13][0]&"|"&$Fb[14][0]&"|"&$Fb[15][0]&"|"&$Fb[16][0]&"|"&$Fb[17][0]&"|"&$Fb[18][0]&"|"&$Fb[19][0]&"|"&$Fb[20][0]&"|"&$Fb[21][0])
$Label3 = GUICtrlCreateLabel("˵��:�����С�ĵ�����µ��Ժ������޷���ָ���Ť��" & @CRLF & "��ֱ�Ӱ�Ctrl+R���ָ�����ǰ����", 22, 130, 516, 50)
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetFont(-1, 11.5, 400, 0, "����")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			_WinAPI_AnimateWindow($Form1_1,BitOR($AW_BLEND, $AW_HIDE),450) ;������ʧЧ��
			Exit_()
		Case $Button40
			$FbFz = GUICtrlRead($Combo1)
			fenbianlv()
			xianshi()
		Case $Button41
			huifu()
	EndSwitch
WEnd
;����ֱ��ʰ�ťִ�к���
Func fenbianlv()
	If $FbFz = "800  x  600  x  32  x  60" Then
		_ChangeScreenRes(800,600,32,60)
	EndIf
	If $FbFz = "800  x  600  x  32  x  75" Then
		_ChangeScreenRes(800,600,32,75)
	EndIf
	If $FbFz = "800  x  600  x  32  x  85" Then
		_ChangeScreenRes(800,600,32,85)
	EndIf
	If $FbFz = "1024 x  600  x  32  x  60" Then
		_ChangeScreenRes(1024,600,32,60)
	EndIf
	If $FbFz = "1024 x  768  x  32  x  60" Then
		_ChangeScreenRes(1024,768,32,60)
	EndIf
	If $FbFz = "1024 x  768  x  32  x  70" Then
		_ChangeScreenRes(1024,768,32,70)
	EndIf
	If $FbFz = "1024 x  768  x  32  x  75" Then
		_ChangeScreenRes(1024,768,32,75)
	EndIf
	If $FbFz = "1024 x  768  x  32  x  85" Then
		_ChangeScreenRes(1024,768,32,85)
	EndIf
	If $FbFz = "1280 x  800  x  32  x  60" Then
		_ChangeScreenRes(1280,800,32,60)
	EndIf
	If $FbFz = "1280 x  1024 x  32  x  60" Then
		_ChangeScreenRes(1280,1024,32,60)
	EndIf
	If $FbFz = "1280 x  1024 x  32  x  70" Then
		_ChangeScreenRes(1280,1024,32,70)
	EndIf
	If $FbFz = "1280 x  1024 x  32  x  75" Then
		_ChangeScreenRes(1280,1024,32,75)
	EndIf
	If $FbFz = "1280 x  1024 x  32  x  85" Then
		_ChangeScreenRes(1280,1024,32,85)
	EndIf
	If $FbFz = "1366 x  768  x  32  x  60" Then
		_ChangeScreenRes(1366,768,32,60)
	EndIf
	If $FbFz = "1440 x  900  x  32  x  60" Then
		_ChangeScreenRes(1440,900,32,60)
	EndIf
	If $FbFz = "1600 x  900  x  32  x  60" Then
		_ChangeScreenRes(1600,900,32,60)
	EndIf
	If $FbFz = "1680 x  1050 x  32  x  60" Then
		_ChangeScreenRes(1680,1050,32,60)
	EndIf
	If $FbFz = "1920 x  1080 x  32  x  60" Then
		_ChangeScreenRes(1920,1080,32,60)
	EndIf
	If $FbFz = "1920 x  1200 x  32  x  60" Then
		_ChangeScreenRes(1920,1200,32,60)
	EndIf
	If $FbFz = "2560 x  1440 x  32  x  60" Then
		_ChangeScreenRes(2560,1440,32,60)
	EndIf
	If $FbFz = "2560 x  1600 x  32  x  60" Then
		_ChangeScreenRes(2560,1600,32,60)
	EndIf
EndFunc
;�����б���������ʾ����
Func xianshi()
	Global $DesktopWidth1 = @DesktopWidth , $DesktopHeight1 = @DesktopHeight , $DesktopDepth1 = @DesktopDepth , $DesktopRefresh1 = @DesktopRefresh 
	_GUICtrlListView_DeleteAllItems($ListView2);ˢ���б���
	GUICtrlCreateListViewItem($DesktopWidth1 & "|" & $DesktopHeight1 & "|" & $DesktopDepth1 & "|" & $DesktopRefresh1,$ListView2)
EndFunc
;����ָ����ڷֱ���ǰ�ĺ���
Func huifu()
	_ChangeScreenRes($DesktopWidth,$DesktopHeight,$DesktopDepth,$DesktopRefresh)
	xianshi();ֻ��Ϊ�˴ﵽ��ʾ�б��Ŀ�ģ�Ӧ��������ȼ�����
EndFunc
;$DesktopWidth  , $DesktopHeight  , $DesktopDepth  , $DesktopRefresh ����ǰ��ȡ�ķֱ���
;$DesktopWidth1  , $DesktopHeight1  , $DesktopDepth1  , $DesktopRefresh1 ���к��ȡ�ķֱ���
;$Fb��ȡ�ֱ���INI�����ļ�
;$FbFz�ֱ��ʴ���Ͽ��ж�ȡ��ֵ�����Լ�
Func Exit_()
	GUISetState(@SW_SHOW)
	FileDelete($Systemtools & "\Resolution.ini")
	Exit
EndFunc
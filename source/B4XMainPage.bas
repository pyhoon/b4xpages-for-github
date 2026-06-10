B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
'#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'#Macro: Title, Sync Files, ide://run?File=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region
#Region Macros
#Macro: Title, Export, ide://run?File=%B4X%\Zipper.jar&Args=%PROJECT_NAME%.zip
#Macro: Title, GitHub, ide://run?File=%WINDIR%\System32\cmd.exe&Args=/c&Args=github&Args=..\..\
#Macro: Title, JsonLayouts folder, ide://run?File=%WINDIR%\explorer.exe&Args=%PROJECT%\JsonLayouts
#Macro: After Save, Sync Layouts, ide://run?File=%ADDITIONAL%\..\B4X\JsonLayouts.jar&Args=%PROJECT%&Args=%PROJECT_NAME%
#End Region
Sub Class_Globals
	Private xui As XUI
	Private Root As B4XView
End Sub

Public Sub Initialize
'	B4XPages.GetManager.LogEvents = True
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("MainPage")
End Sub

'Called whenever the page becomes visible. Note that in B4J the Appear and Disappear events are only raised when the page is opened and closed. Not when the focus changes to a different window.
Private Sub B4XPage_Appear
	
End Sub

'Called whenever a visible page disappear.
Private Sub B4XPage_Disappear
	
End Sub

#If B4A
Private Sub B4XPage_CloseRequest As ResumableSub
	Return True
End Sub

Private Sub B4XPage_KeyPress (KeyCode As Int) As Boolean 'ignore
	Select KeyCode
		Case KeyCodes.KEYCODE_BACK
			'code to handle back key
		Case Else
			Return False 'Pass to Android System
	End Select
End Sub
#End If
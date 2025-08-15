Scriptname EzSkse64PluginExampleQuestScript extends Quest  
{Ez SKSE64 Plugin Example Quest Script}

; ========================================================
; IMPORTS ================================================
; ========================================================

import EzSkse64TestClass

; ========================================================
; VARIABLES ==============================================
; ========================================================

Int Property intTest = 1 Auto

Float Property floatTest = 1.0 Auto

Bool Property boolTest = False Auto

String Property stringTest = "One" Auto

; ========================================================
; EVENTS =================================================
; ========================================================

; For Skyrim, unlike Fallout4
; FIXME - called twice? prints 4 hello worlds
Event OnInit()
	Debug.Trace(self +" OnInit()")
	Debug.Notification("EzSkse64PluginExampleQuest : OnInit")
	Debug.MessageBox("EzSkse64PluginExampleQuest : OnInit")
	
	;code here
	
	;EzSkse64TestClass
	;EzSkse64TestClass.Test();
	
	if (EzSkse64TestClass.Test())
		Debug.Trace(self +" EzSkse64TestClass.Test()")
		Debug.Notification("EzSkse64PluginExampleQuest : EzSkse64TestClass.Test()")
		Debug.MessageBox("EzSkse64PluginExampleQuest : EzSkse64TestClass.Test()")
	endif
	
	if (Test())
		Debug.Trace(self +" Test()")
		Debug.Notification("EzSkse64PluginExampleQuest : Test()")
		Debug.MessageBox("EzSkse64PluginExampleQuest : Test()")
	endif
	
	Debug.Trace(self +" OnInit() : EOL")
	Debug.Notification("EzSkse64PluginExampleQuest : OnInit : EOL")
	Debug.MessageBox("EzSkse64PluginExampleQuest : OnInit : EOL")
EndEvent

Event OnReset()
	Debug.Trace(self +" OnReset()")
	Debug.Notification("EzSkse64PluginExampleQuest : OnReset")
	Debug.MessageBox("EzSkse64PluginExampleQuest : OnReset")
	
	;code here
	
	Debug.Trace(self +" OnReset() : EOL")
	Debug.Notification("EzSkse64PluginExampleQuest : OnReset : EOL")
EndEvent

; Not used in Skyrim, unlike Fallout4
;Event OnQuestShutdown()
;	Debug.Trace(self +" OnQuestShutdown()")
;	Debug.Notification("EzSkse64PluginExampleQuest : OnQuestShutdown")
;	Debug.MessageBox("EzSkse64PluginExampleQuest : OnQuestShutdown")
;	
;	;code here
;	
;	Debug.Trace(self +" OnQuestShutdown() : EOL")
;	Debug.Notification("EzSkse64PluginExampleQuest : OnQuestShutdown : EOL")
;EndEvent

;Autonexus v1.2 script made by Sticky for MPGH
#NoEnv
#MaxThreadsPerHotkey 2
nexusHotkey = r ; here you can change the nexus hotkey

CustomColor := "000000"
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Color, %CustomColor%
Gui, Font, s25  ; Set a large font size (32-point).
Gui, Add, Text, vMyText cLime, OFF
WinSet, TransColor, %CustomColor% 200
Gui, Show, x1100 y-5 NoActivate 

^n::
Toggle := !Toggle
loop
{
    If not Toggle
	{
        GuiControl,, MyText, OFF
	break
	}
    PixelGetColor, color, 1670, 485 
	GuiControl,, MyText, ON
	if ("0xE3E3E3" = color) {
		Send %nexusHotkey%
	}
	Sleep, 15 
}
return
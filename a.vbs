' VBScript to set desktop wallpaper and remove all desktop.ini files

Option Explicit

' --- Set Wallpaper ---
Dim strWallpaperURL, strWallpaperPath, objXMLHTTP, objADOStream, objFSO, objShell, strTempFolder

strWallpaperURL = "https://d.furaffinity.net/art/kt1/1558570678/1558570678.kt1_1__1_.png"
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("WScript.Shell")

' Get temp folder and wallpaper path
strTempFolder = objShell.ExpandEnvironmentStrings("%TEMP%")
strWallpaperPath = strTempFolder & "\wallpaper.png"

' Download the image
Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")
objXMLHTTP.open "GET", strWallpaperURL, False
objXMLHTTP.send

If objXMLHTTP.Status = 200 Then
    Set objADOStream = CreateObject("ADODB.Stream")
    objADOStream.Type = 1
    objADOStream.Open
    objADOStream.Write objXMLHTTP.responseBody
    objADOStream.SaveToFile strWallpaperPath, 2
    objADOStream.Close
    Set objADOStream = Nothing
End If
Set objXMLHTTP = Nothing

' Set wallpaper (if download succeeded)
If objFSO.FileExists(strWallpaperPath) Then
    objShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", strWallpaperPath
    objShell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True
End If

' --- Remove all desktop.ini files ---
Dim strSearchDir, colFolders, folder
strSearchDir = objShell.ExpandEnvironmentStrings("%USERPROFILE%\Desktop")

' Function to recursively delete desktop.ini
Sub DeleteDesktopIni(strFolder)
    Dim folder, file, subFolder
    Set folder = objFSO.GetFolder(strFolder)
    For Each file In folder.Files
        If LCase(file.Name) = "desktop.ini" Then
            On Error Resume Next
            file.Delete True
            On Error GoTo 0
        End If
    Next
    For Each subFolder In folder.SubFolders
        DeleteDesktopIni subFolder.Path
    Next
End Sub

' Start from Desktop, but you can change to other roots if needed
DeleteDesktopIni strSearchDir

' Optional: Also clean from Documents, Downloads, etc.
' DeleteDesktopIni objShell.ExpandEnvironmentStrings("%USERPROFILE%\Documents")
' DeleteDesktopIni objShell.ExpandEnvironmentStrings("%USERPROFILE%\Downloads")
' DeleteDesktopIni objShell.ExpandEnvironmentStrings("%USERPROFILE%")

Set objFSO = Nothing
Set objShell = Nothing

MsgBox "Wallpaper set and all desktop.ini files have been removed.", vbInformation, "Done"

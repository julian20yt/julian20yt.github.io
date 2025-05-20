' directv_spammer.vbs
' This script repeatedly shows message boxes saying "directv" for 2 minutes,
' then opens Internet Explorer.

Dim startTime, currentTime
Dim durationSeconds
durationSeconds = 120 ' 2 minutes

startTime = Timer

Do
    MsgBox "directv", vbInformation, "Message"
    currentTime = Timer
    ' Handle midnight rollover for Timer (resets at 86400 seconds)
    If currentTime < startTime Then
        currentTime = currentTime + 86400
    End If
Loop While (currentTime - startTime) < durationSeconds

' Open Internet Explorer to a default page (about:blank)
Set objIE = CreateObject("InternetExplorer.Application")
objIE.Visible = True
objIE.Navigate "about:blank"

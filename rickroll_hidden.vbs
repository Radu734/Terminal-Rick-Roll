Set WshShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

strPath = fso.GetParentFolderName(WScript.ScriptFullName)
batchPath = strPath & "\rick.bat"
WshShell.Run """" & batchPath & """", 0, False
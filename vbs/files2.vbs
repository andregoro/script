Dim fso
Dim path
Dim oFolder
Dim oSubFolder
Const OverwriteExisting = True

 Set Sh = CreateObject("Shell.Application")
Set F = Sh.BrowseForFolder(0, "Choose the folder containing files to transfer", 0, 17)
If F Is Nothing Then WSCript.Quit
transfer = F.Items.Item.Path



 Set Sh = CreateObject("Shell.Application")
Set F = Sh.BrowseForFolder(0, "Choose Target Folder", 0, 17)
If F Is Nothing Then WSCript.Quit
Path = F.Items.Item.Path

Set fso = createobject("Scripting.FileSystemObject")
Folder = transfer & "\*"    

Set oFolder = fso.GetFolder(Path)
Set colSubfolders = oFolder.Subfolders

For Each oSubfolder in colSubfolders
    fso.CopyFolder Folder, path & "\" & oSubFolder.Name & "\", OverwriteExisting    
Next
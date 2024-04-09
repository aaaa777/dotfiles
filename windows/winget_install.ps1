$folderFileList = Get-ChildItem -File "./winget_installers/" -Filter *.ps1

# 取得したファイル数分ループする
foreach($item in $folderFileList)
{
    # ファイル名を表示する
    Write-Host $item.FullName
}

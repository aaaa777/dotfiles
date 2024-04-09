# 実行ファイルからの相対パスを取得
$scriptPath = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$filePath = Join-Path -Path $scriptPath -ChildPath "winget_install_list.txt"

# ファイルを読み込む
$lines = Get-Content -Path $filePath

# 行ごとに表示する
foreach ($line in $lines) {
    if ($line.StartsWith("#")) {
        continue
    }
    if ($line.StartsWith("//")) {
        continue
    }
    if ([string]::IsNullOrWhiteSpace($line)) {
        continue
    }
    Write-Host "[Dotfiles Script]Installing $line with winget"
    winget install -e --id $line
}
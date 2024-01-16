if ($PSVersionTable.PSVersion -lt 6.0.0) {
    $IsWindows = $true
    $IsLinux = $false
    $IsMacOS = $false
    $IsCoreCLR = $false
}

if ($IsWindows) {
    Set-Location -Path $env:SystemDrive\
}

$Error.Clear()

$poshGitModule = Get-Module posh-git -ListAvailable

if ($poshGitModule) {
    Import-Module -Name posh-git

    function prompt {

        if (-not(git rev-parse --is-inside-work-tree 2> $null)) {
            $prompt = "PS $($executionContext.SessionState.Path.CurrentLocation)$('>') "
        }
        else {
            $prompt = Write-Prompt 'PS ' -ForegroundColor ([ConsoleColor]::Green)
            $prompt += Write-Prompt "$($executionContext.SessionState.Path.CurrentLocation)" -ForegroundColor ([ConsoleColor]::Yellow)
            $prompt += Write-VcsStatus
            $prompt += "`n$ "
        }

        $prompt

    }

    $GitPromptSettings.BeforeStatus = '('
    $GitPromptSettings.BeforeStatus.ForegroundColor = [ConsoleColor]::Cyan
    $GitPromptSettings.AfterStatus = ')'
    $GitPromptSettings.AfterStatus.ForegroundColor = [ConsoleColor]::Cyan
}

$PSDefaultParameterValues += @{
    'Out-Default:OutVariable' = 'LastResult'
    'Out-File:Encoding' = 'utf8'
    'Export-Csv:NoTypeInformation' = $true
    'ConvertTo-Csv:NoTypeInformation' = $true
    'Receive-Job:Keep' = $true
    'Install-Module:AllowClobber' = $true
    'Install-Module:Force' = $true
    'Install-Module:SkipPublisherCheck' = $true
    'Group-Object:NoElement' = $true
    'Find-Module:Repository' = 'PSGallery'
    'Install-Module:Repository' = 'PSGallery'
    'Install-Module:Scope' = 'AllUsers'
}

Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineKeyHandler -Chord F2 -Function SwitchPredictionView
Set-PSReadLineKeyHandler -Chord Enter -Function ValidateAndAcceptLine
Set-PSReadLineKeyHandler -Chord Escape -Function BackwardKillInput
Set-PSReadLineKeyHandler -Chord Ctrl+RightArrow -Function ForwardWord
Set-PSReadLineKeyHandler -Chord Ctrl+LeftArrow -Function BackwardWord
Set-PSReadLineKeyHandler -Chord Ctrl+D2 -Function MenuComplete

if ($host.ui.RawUI.WindowTitle -eq 'PowerShell ISE') {
    $ISETheme = @{
        Command                  = $PSStyle.Foreground.FromRGB(0x0000FF)
        Comment                  = $PSStyle.Foreground.FromRGB(0x006400)
        ContinuationPrompt       = $PSStyle.Foreground.FromRGB(0x0000FF)
        Default                  = $PSStyle.Foreground.FromRGB(0x0000FF)
        Emphasis                 = $PSStyle.Foreground.FromRGB(0x287BF0)
        Error                    = $PSStyle.Foreground.FromRGB(0xE50000)
        InlinePrediction         = $PSStyle.Foreground.FromRGB(0x93A1A1)
        Keyword                  = $PSStyle.Foreground.FromRGB(0x00008b)
        ListPrediction           = $PSStyle.Foreground.FromRGB(0x06DE00)
        Member                   = $PSStyle.Foreground.FromRGB(0x000000)
        Number                   = $PSStyle.Foreground.FromRGB(0x800080)
        Operator                 = $PSStyle.Foreground.FromRGB(0x757575)
        Parameter                = $PSStyle.Foreground.FromRGB(0x000080)
        String                   = $PSStyle.Foreground.FromRGB(0x8b0000)
        Type                     = $PSStyle.Foreground.FromRGB(0x008080)
        Variable                 = $PSStyle.Foreground.FromRGB(0xff4500)
        ListPredictionSelected   = $PSStyle.Background.FromRGB(0x93A1A1)
        Selection                = $PSStyle.Background.FromRGB(0x00BFFF)
    }
    Set-PSReadLineOption -Colors $ISETheme

    $PSStyle.Formatting.FormatAccent       = "`e[32m"
    $PSStyle.Formatting.TableHeader        = "`e[32m"
    $PSStyle.Formatting.ErrorAccent        = "`e[36m"
    $PSStyle.Formatting.Error              = "`e[31m"
    $PSStyle.Formatting.Warning            = "`e[33m"
    $PSStyle.Formatting.Verbose            = "`e[33m"
    $PSStyle.Formatting.Debug              = "`e[33m"
    $PSStyle.Progress.Style                = "`e[33m"
    $PSStyle.FileInfo.Directory            = $PSStyle.Background.FromRgb(0x2f6aff) +
                                            $PSStyle.Foreground.BrightWhite
    $PSStyle.FileInfo.SymbolicLink         = "`e[36m"
    $PSStyle.FileInfo.Executable           = "`e[95m"
    $PSStyle.FileInfo.Extension['.ps1']    = "`e[36m"
    $PSStyle.FileInfo.Extension['.ps1xml'] = "`e[36m"
    $PSStyle.FileInfo.Extension['.psd1']   = "`e[36m"
    $PSStyle.FileInfo.Extension['.psm1']   = "`e[36m"
}

$StartupVars = @()
$StartupVars = Get-Variable | Select-Object -ExpandProperty Name

Clear-Host

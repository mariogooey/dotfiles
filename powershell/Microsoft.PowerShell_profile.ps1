# Create blank .ps1 profile script with the following command:
# if (!(Test-Path -Path $PROFILE)) {
#   New-Item -ItemType File -Path $PROFILE -Force
# }

function prompt
{
    # Assign Windows Title Text
    $host.ui.RawUI.WindowTitle = "$pwd"

    # Configure current user, current folder and date outputs
    $CmdPromptUser = [Security.Principal.WindowsIdentity]::GetCurrent().Name.split("\")[1];
    $ComputerName = $Env:COMPUTERNAME
    $Date = Get-Date -Format 'dd/MM/yyyy HH:mm:ss'
    $GitBranch = git rev-parse --abbrev-ref HEAD 2>NUL

    # Test for Admin / Elevated
    # $IsAdmin = (New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

    # Decorate the CMD Prompt
    # Write-host ($(if ($IsAdmin) { 'Elevated ' } else { '' })) -BackgroundColor DarkRed -ForegroundColor White -NoNewline
    Write-Host "$($CmdPromptUser)@$ComputerName" -ForegroundColor Green -NoNewline
    Write-Host ":" -ForegroundColor White -NoNewline
    Write-Host "[$pwd]" -ForegroundColor Blue -NoNewline
    if ($GitBranch)
    {
        Write-Host "($GitBranch)" -ForegroundColor Red -NoNewline
    }
    Write-Host " $date" -ForegroundColor Magenta
    return "└─ PS > "
} # End prompt function

# Keybinds
# Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Extensions
# Import the posh-git module, first via installed posh-git module.
# If the module isn't installed, then attempt to load it from the cloned posh-git Git repo.
$poshGitModule = Get-Module posh-git -ListAvailable | Sort-Object Version -Descending | Select-Object -First 1
if ($poshGitModule) {
    $poshGitModule | Import-Module
}
elseif (Test-Path -LiteralPath ($modulePath = Join-Path (Split-Path $MyInvocation.MyCommand.Path -Parent) (Join-Path src 'posh-git.psd1'))) {
    Import-Module $modulePath
}
else {
    throw "Failed to import posh-git."
}

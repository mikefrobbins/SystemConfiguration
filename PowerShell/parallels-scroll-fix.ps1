# Workaround for slow scrolling issue in Windows 11 on Parallels
# For more info, see: https://mikefrobbins.com/2024/11/20/workaround-for-slow-scrolling-issue-in-windows-11-on-parallels/

Get-PnpDevice -FriendlyName 'Parallels USB Mouse Synchronization Device' | Disable-PnpDevice -Confirm:$false -PassThru | Enable-PnpDevice -Confirm:$false

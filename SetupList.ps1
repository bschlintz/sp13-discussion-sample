Connect-PnPOnline -Url "http://sp13.dev.local/sites/team" -CurrentCredentials

#SETUP LIST
$ListTitle = "Discussion"

New-PnPList -Title $ListTitle -Template GenericList -OnQuickLaunch

Add-PnPField -List $ListTitle -DisplayName "Message" -InternalName "Message" -Type Note -AddToDefaultView | Out-Null

Add-PnPListItem -List $ListTitle -Values @{"Title" = "Chat Message"; "Message" = "Message created from PowerShell"} | Out-Null

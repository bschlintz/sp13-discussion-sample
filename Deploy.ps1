Connect-PnPOnline -Url "http://sp13.dev.local/sites/team" -CurrentCredentials

Add-PnPFile -Path "ChatSample.html" -Folder "Style Library/_dev" -Publish -Checkout
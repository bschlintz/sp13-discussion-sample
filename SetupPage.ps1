Connect-PnPOnline -Url "http://sp13.dev.local/sites/team" -CurrentCredentials

#ADD PAGE
$PageUrl = "/sites/team/SitePages/Discuss.aspx"

Add-PnPWikiPage -ServerRelativePageUrl $PageUrl -Layout OneColumn

$WebPartXml = @"
<?xml version="1.0" encoding="utf-8"?>
<WebPart xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.microsoft.com/WebPart/v2">
  <Title>Chat Widget</Title>
  <Assembly>Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c</Assembly>
  <TypeName>Microsoft.SharePoint.WebPartPages.ContentEditorWebPart</TypeName>
  <ContentLink xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor">/sites/team/Style Library/_dev/ChatSample.html</ContentLink>
</WebPart>
"@

Add-PnPWebPartToWikiPage -ServerRelativePageUrl $PageUrl -Xml $WebPartXml -Row 1 -Column 1
#####################
# Script frá AJ/JAN #
#   Tillaga av MMO  #
#       Formula     #
#####################


tzutil.exe /s "GMT Standard Time"
ipmo international
Set-Culture fo-FO
Set-WinSystemLocale fo-FO
Set-WinHomeLocation -GeoId 81
$langList = New-WinUserLanguageList fo-FO
$langList[0].InputMethodTips.Clear() 
$langList[0].InputMethodTips.Add('0438:00000438') 
Set-WinUserLanguageList $langList -Force
intl.cpl

# File names
Get-ChildItem -Path C:\ -Recurse -exclude *.dll -erroraction 'silentlycontinue' -Filter "*pwds*" -File | % {Write-Host $_.FullName} >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll -erroraction 'silentlycontinue' -Filter "*pass*" -File | % {Write-Host $_.FullName} >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll -erroraction 'silentlycontinue' -Filter "*login*" -File | % {Write-Host $_.FullName} >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll -erroraction 'silentlycontinue' -Filter "*mdp*" -File | % {Write-Host $_.FullName} >> WinPwds.txt

# File contents
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe, *.gif, *.png, *.jpg, *.jpeg -erroraction 'silentlycontinue'  | select-string -Pattern "pwd.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe, *.gif, *.png, *.jpg, *.jpeg -erroraction 'silentlycontinue'  | select-string -Pattern "pass.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe, *.gif, *.png, *.jpg, *.jpeg -erroraction 'silentlycontinue'  | select-string -Pattern "-p .{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe, *.gif, *.png, *.jpg, *.jpeg -erroraction 'silentlycontinue'  | select-string -Pattern "mot de passe.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe, *.gif, *.png, *.jpg, *.jpeg -erroraction 'silentlycontinue'  | select-string -Pattern "SAPWD.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe, *.gif, *.png, *.jpg, *.jpeg -erroraction 'silentlycontinue'  | select-string -Pattern "mdp.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt

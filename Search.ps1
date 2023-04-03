# File names
Get-ChildItem -Path C:\ -Recurse -exclude *.dll -erroraction 'silentlycontinue' -Include "*pwds*","*pass*","*login*","*mdp*" -File | Foreach {Write-Host $_.FullName} >> WinPwds.txt
# File contents
Get-ChildItem -Path C:\ -Recurse -exclude *.docx, *.xslx, *.dll, *.pdb,  *.cache, *.exe, *.gif, *.png, *.jpg, *.jpeg -erroraction 'silentlycontinue'  | select-string -Pattern "pwd.{1,12}|pass.{1,12}|-p .{1,12}|SAPWD.{1,12}|mdp.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue' |  Foreach { $_.Matches }  |  % { $_.Value } >> WinPwds.txt

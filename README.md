# WinPwdSearch

Run in powershell as elevated as possible. 

```
powershell -ep bypass
```

```
.\Search.ps1
```

Sort after 

```
cat WinPwds.txt | sort | uniq > WinPwds-Sorted.txt
```


To do:

- pwds in reg
- filter out known strings things that come back

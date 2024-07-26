Enable-PsRemoting -Force
winrm quickconfig -Force
winrm set winrm/config/service/Auth '@{Basic="true"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
New-NetFirewallRile -Name 'ANSIBLE-WINRM-WSL2-LOCALHOST' -DisplayName 'Allow Ansible WinRM from WSL2 on localhost over HTTP' `
-Profile Any -Direction Inbound -Action Allow -Protocol TCP -LocalPort 5985

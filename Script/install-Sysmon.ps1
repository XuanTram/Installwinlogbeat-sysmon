<#
Script: Install sysmon to monitor on server 
Author: DMH
Date: 31/03/2022
#>

Set-Location -Path 'C:\Users\huyendm\Desktop\Sysmon' #Di chuyen den folder chua sysmon.exe
.\sysmon64.exe -accepteula -i sysmonconfig-export.xml #Chay ct 
Write-Host "Sysmon Installed!"  #Ket thuc chuong trinh
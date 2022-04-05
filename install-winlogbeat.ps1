<#
Script: Install winlogbeat on server 
Author: DMH
Date: 30/03/2022
#>
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" `"$args`"" -Verb RunAs; exit } #mo powershell duoi quyen admin
Move-Item -Path "C:\Users\huyendm\Desktop\winlogbeat" -Destination "C:\Program Files" -force #di chuyen file winlogbeat den folder program file
Set-Location -Path 'C:\Program Files\winlogbeat'

Write-Host "Installing Winlogbeat..."

.\install-service-winlogbeat.ps1
Write-Host "test"
.\winlogbeat.exe test config -c .\winlogbeat.yml -e
Write-Host "Setup assets"
.\winlogbeat.exe setup -e
Write-Host "Start Service"
Start-Service winlogbeat

Write-Host "Winlogbeat Installed!"
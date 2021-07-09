# -----------------------------------------------------------------
# Set Registry Keys for PrintNightmare [CVE-2021-1675] - For Servers
# Created by: Christopher Clai (syntaxbearror.io)
# -----------------------------------------------------------------
# Version 1.0 (July 9th, 2021)
# -----------------------------------------------------------------
#
# Use this on systems as part of the final mitigation to the CVE-2021-1675 exploit.
#
# Example of running the script:
# .\servers.ps1
#
#
# ##### CHANGELOG ########
# Version 1.0
# - It is born!
#
#

# Registry Changes for PrintNightmare for Servers
Write-Host "Creating Keys and Values..."

# Create the keys if not present
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers" -ErrorAction SilentlyContinue
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -ErrorAction SilentlyContinue

# Create / Set the values
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -Name NoWarningNoElevationOnInstall -Value 0
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -Name UpdatePromptSettings -Value 0
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -Name RestrictDriverInstallationToAdministrators -Value 1

Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name EnableLUA -Value 1

# Output Results
Write-Host "Status of Keys..."
Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -Name NoWarningNoElevationOnInstall
Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -Name UpdatePromptSettings
Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint" -Name RestrictDriverInstallationToAdministrators

Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name EnableLUA
Write-Host "Completed."
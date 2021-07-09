# -----------------------------------------------------------------
# Set Registry Keys for PrintNightmare [CVE-2021-1675] - For Workstations
# Created by: Christopher Clai (syntaxbearror.io)
# -----------------------------------------------------------------
# Version 1.0 (July 9th, 2021)
# -----------------------------------------------------------------
#
# Use this on systems that shouldn't host shared printers which will block RPC connections.
#
# Example of running the script:
# .\workstations.ps1
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

Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers" -Name RegisterSpoolerRemoteRPCEndPoint -Value 2

# Output Results
Write-Host "Status of Keys..."
Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers" -Name RegisterSpoolerRemoteRPCEndPoint

Write-Host "Completed."
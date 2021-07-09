# PowerShell-PrintNightmare
A collection of scripts to help set the appropriate registry keys for CVE-2021-34527 shared as part of our blogs outlining various mitigation options. 

servers.ps1 contains the registry settings related to PointAndPrint. You still need to install the patch!
workstations.ps1 is more a hardening script to blocking inbound remote printing on devices you don't want to share / host printers.

Read more on our blogs or broader / alternative methods over at https://www.syntaxbearror.io/blog/printnightmare-part-ii-print-spooler-remains-vulnerable-across-windows/

For the blog that referenced this repository, view it at https://www.syntaxbearror.io/blog/printnightmare-part-iii-patching-remediation/

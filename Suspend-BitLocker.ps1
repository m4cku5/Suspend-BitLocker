$BitLockerStatus = (Get-BitLockerVolume -MountPoint "C:" | Select-Object ProtectionStatus)

if ($BitLockerStatus = "On") {
    Write-Host "BitLocker is $BitLockerStatus, and will be suspended for one reboot."
    Suspend-BitLocker -MountPoint "C:" -RebootCount 1
} else {
    Write-Host "BitLocker is $BitLockerStatus."
}
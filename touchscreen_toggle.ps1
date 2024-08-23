# Words to find your touchscreen device
$deviceKeywords = '*Precise touch*'

# MessageBox to inform user
$objShell = New-Object -ComObject "WScript.Shell"
$timeout = 2

# Get current state of touchscreen device
$device = Get-PnpDevice | Where-Object { $_.FriendlyName -like $deviceKeywords }

# Read Status and set toggle action
$currentStatus = ($device).Status
if ($currentStatus -eq 'OK') { 
    $action = "Disable-PnpDevice"
} else { 
    $action = "Enable-PnpDevice"
}

if ($device) {
    # Execute touchscreen device status change
    $result = &$action -InputObject $device -Confirm:$false

    # Only show the message if the action was successful
    if ($result.Status -ne $currentStatus) {
        $statusMessage = if ($action -eq "Disable-PnpDevice") { "disabled" } else { "enabled" }
        # Show the result of the action to the user for 2 seconds
        $objShell.Popup("The touch screen was $statusMessage", $timeout)
    } else {
        $objShell.Popup("Action was not successful", 5)
    }
} else {
    $objShell.Popup("No touchscreen device was found", 5)
}
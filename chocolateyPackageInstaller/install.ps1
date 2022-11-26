param(
    [string]$package = "",
    [string]$sourceserver = "",
    [switch]$uninstall = $false
)

if ($uninstall) {
    choco uninstall $package -y
} else {
    if($sourceserver){
        choco upgrade $package -y --source="$($sourceserver)"
    }
    else{
        choco upgrade $package -y
    }
}
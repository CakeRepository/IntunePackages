param(
    [string]$params = "",
    [Parameter (Mandatory)]
    [string]$package = "",
    [switch]$uninstall = $false
)

if ($uninstall) {
    choco uninstall $package -y
} else {
    choco upgrade $package -y $params.split('@')
}
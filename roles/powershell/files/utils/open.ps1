function open {
  param ($path)

  function get_openpath {
    if ([string]::IsNullOrWhiteSpace($path)) {
      return Get-Location
    }

    return Resolve-Path $path
  }

  explorer.exe "$(get_openpath)"
}

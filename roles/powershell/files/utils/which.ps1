function which {
  param([Parameter(Mandatory, ValueFromPipeline, Position = 0)] $cmd)
  return Get-Command -Name $cmd -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

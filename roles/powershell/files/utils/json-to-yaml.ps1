function Convert-JsonToYaml {
  param (
    [Parameter(Mandatory, ValueFromPipeline, ValueFromRemainingArguments)]
    [string] $InputObject
  )

  $InputObject | ConvertFrom-Json | ConvertTo-Yaml | Write-Output
}

function Convert-YamlToJson {
  param (
    [Parameter(Mandatory, ValueFromPipeline, ValueFromRemainingArguments)]
    [string] $InputObject
  )

  $InputObject | ConvertFrom-Yaml | ConvertTo-Json | Write-Output
}

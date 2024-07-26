function get-ip {
  param ([switch] $v6)

  $request_url = 'https://icanhazip.com'

  . curl "$($v6 ? '-6' : '-4')" $request_url
}

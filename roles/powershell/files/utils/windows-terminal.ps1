
<#
.SYNOPSIS
  Split pane in the current Windows Terminal tab
#>
function spl {
  & wt -w 0 sp
}

<#
.SYNOPSIS
  Split pane in the current Windows Terminal tab and CWD
#>
function dspl {
  & wt -w 0 sp -d $pwd
}

<#
.SYNOPSIS
  Open new tab in the current Windows Terminal window
#>
function nt {
  & wt -w 0
}

<#
.SYNOPSIS
  Open new tab in the current Windows Terminal window and CWD
#>
function dt {
  & wt -w 0 -d $pwd
}

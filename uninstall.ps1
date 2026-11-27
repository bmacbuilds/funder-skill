# Removes Funder on Windows: only the skill folders our installer marked as ours. Nothing you made with it is ever touched.
$ErrorActionPreference = "Stop"
$Commands = @("scout", "investors", "plan", "deck", "closer", "market", "model", "coach", "terms", "dataroom", "updates")   # written by scripts/sync.py from skill.json
$removed = 0
foreach ($base in "funder", "bmac-funder") {
  foreach ($name in @($base) + @($Commands | ForEach-Object { "$base-$_" })) {
    $dir = Join-Path $HOME ".claude\skills\$name"
    if (-not (Test-Path -LiteralPath $dir)) { continue }
    if (Test-Path -LiteralPath (Join-Path $dir ".funder-install")) {
      Remove-Item -Recurse -Force -LiteralPath $dir; $removed++
    } else {
      Write-Output "Left $dir alone: Funder did not install it."
    }
  }
}
if ($removed -gt 0) { Write-Output "Removed Funder ($removed skill folders)." } else { Write-Output "Funder was not installed." }

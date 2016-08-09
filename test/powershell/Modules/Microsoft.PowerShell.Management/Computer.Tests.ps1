Describe "Computer Tests" -Tags "CI" {

    $Commands = @("Restart-Computer",
                  "Stop-Computer",
                  "Rename-Computer",
                  "Get-ComputerInfo")

    foreach ($Command in $Commands) {
        It "$Command should only be available on Windows" {
            [bool](Get-Command $Command -ErrorAction SilentlyContinue) | Should Be $IsWindows
        }
    }
}

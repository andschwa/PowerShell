Describe "Unblock-File Tests" -Tags "CI" {

    It "Unblock-File should only be available on Windows" {
        [bool](Get-Command Unblock-File -ErrorAction SilentlyContinue) | Should Be $IsWindows
    }
}

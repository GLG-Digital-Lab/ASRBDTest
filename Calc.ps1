While ($true) {
    
    $input1 = Read-Host "First number"
    do {
        if ($input1 -NotMatch '^\d+$') {
            $input1 = Read-Host "Enter a valid number please"
        }
    } while ($input1 -NotMatch '^\d+$')
    
    $input1 = [int]$input1
    
    echo "+----------------------+"
    echo "| [ + ] : Add          |"
    echo "| [ - ] : Substract    |"
    echo "| [ * ] : Multiplicate |"
    echo "| [ / ] : Divide       |"
    echo "+----------------------+"
   
    [String]$op = Read-Host "Operation"

    $input2 = Read-Host "Second number"
    do {
        if ($input2 -NotMatch '^\d+$') {
            $input2 = Read-Host "Enter a valid number please"
        }
    } while ($input2 -NotMatch '^\d+$')
    
    $input2 = [int]$input2
    
    switch ($op) {
        "+" { $res = $input1 + $input2 }
        "-" { $res = $input1 - $input2 }
        "*" { $res = $input1 * $input2 }
        "/" { $res = $input1 / $input2 }
        default { $res = "Error" }
    }
    Write-Host "`nResult >> $res`n`a"
}
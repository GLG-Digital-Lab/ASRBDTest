
function Rules {
   
    echo "|       ||  | |  ||   | |       ||       ||  | |  ||  |_|  ||   |"
    echo "|       ||  |_|  ||   | |    ___||   _   ||  | |  ||       ||   |"
    echo "|       ||       ||   | |   |___ |  | |  ||  |_|  ||       ||   |"
    echo "|      _||       ||   | |    ___||  |_|  ||       ||       ||   |"
    echo "|     |_ |   _   ||   | |   |    |       ||       || ||_|| ||   |"
    echo "|_______||__| |__||___| |___|    |_______||_______||_|   |_||___|`n"
    echo "+-----------------+"
    echo "| [ 1 ] : Pierre  |"
    echo "| [ 2 ] : Feuille |"
    echo "| [ 3 ] : Ciseaux |"
    echo "+-----------------+"
}

[Int] $scoreUser = 0
[Int] $scoreCpu = 0


function Main {

    While ($true) {

        Rules
    
        [Int] $user = Read-Host "Votre choix"
        [Int] $cpu = Get-Random -Maximum 4 -Minimum 0
    
        switch ($user) {
            1 { $userChoice = "Pierre"  }
            2 { $userChoice = "Feuille" }
            3 { $userChoice = "Ciseaux" }
            default { exit 0}
        }
        switch ($cpu) {
            1 { $cpuChoice = "Pierre"  }
            2 { $cpuChoice = "Feuille" }
            3 { $cpuChoice = "Ciseaux" }
        }
    
        if (($userChoice -eq "Pierre") -and ($cpuChoice -eq "Pierre")) {
            $res = "Égalité"
        }
        if (($userChoice -eq "Feuille") -and ($cpuChoice -eq "Pierre")) {
            $res = "Gagné"
            $scoreUser++
        }
        if (($userChoice -eq "Ciseaux") -and ($cpuChoice -eq "Pierre")) {
            $res = "Perdu"
            $scoreCpu++
        }
        if (($userChoice -eq "Pierre") -and ($cpuChoice -eq "Feuille")) {
            $res = "Perdu"
            $scoreCpu++
        }
        if (($userChoice -eq "Feuille") -and ($cpuChoice -eq "Feuille")) {
            $res = "Égalité"
        }
        if (($userChoice -eq "Ciseaux") -and ($cpuChoice -eq "Feuille")) {
            $res = "Gagné"
            $scoreUser++
        }
        if (($userChoice -eq "Pierre") -and ($cpuChoice -eq "Ciseaux")) {
            $res = "Gagné"
            $scoreUser++
        }
        if (($userChoice -eq "Feuille") -and ($cpuChoice -eq "Ciseaux")) {
            $res = "Perdu"
            $scoreCpu++
        }
        if (($userChoice -eq "Ciseaux") -and ($cpuChoice -eq "Ciseaux")) {
            $res = "Égalité"
        }

        clear
        echo "Joueur: $userChoice"
        sleep 1
        echo "Ordinateur: $cpuChoice"
        sleep 1
        echo "Résultat: $res"
        sleep 2
        clear
        echo "Score Joueur: $scoreUser"
        sleep 1
        echo "Score Ordinateur: $scoreCpu"
        sleep 1
        clear
    }
}

Main 
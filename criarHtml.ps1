# Função para pedir o nome do projeto
function AskForProjectName {
    $projectName = Read-Host "Digite o nome do projeto (ou 'sair' para encerrar)"

    if ($projectName -eq "sair") {
        Write-Host "Encerrando o script."
        exit
    } elseif (-not $projectName) {
        Write-Host "Nome do projeto não pode estar vazio."
        AskForProjectName
    }

    return $projectName
}

# Pedir o nome do projeto inicialmente
$projectName = AskForProjectName

# Criação do diretório do projeto
New-Item -ItemType Directory -Name $projectName -Force | Out-Null
Set-Location -Path $projectName

# Criação dos arquivos e pastas
New-Item -ItemType Directory -Name "styles" | Out-Null
New-Item -ItemType Directory -Name "scripts" | Out-Null
New-Item -ItemType Directory -Name "assets" | Out-Null
New-Item -ItemType File -Name "index.html" | Out-Null
New-Item -ItemType File -Name ".gitignore" | Out-Null
New-Item -ItemType File -Name "styles\style.css" | Out-Null
New-Item -ItemType File -Name "scripts\main.js" | Out-Null

# Preenchimento do arquivo HTML
@"
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="Renan Santos" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$projectName</title>
    <meta name="description" content="">

    <link rel="stylesheet" href="styles/style.css">
    <link rel="icon" href="">

    <script src="scripts/main.js" defer type="module"></script>
</head>
<body>
    
</body>
</html>
"@ | Set-Content -Path "index.html"

# Preenchimento do arquivo style.css
@"
@import url('https://renansantos7.github.io/styles/reset.css');
"@ | Set-Content -Path "styles\style.css"

# Preenchimento do arquivo .gitignore
@"
.vscode
"@ | Set-Content -Path ".gitignore"

# Mensagem de sucesso
Write-Host "Projeto criado com sucesso em $(Get-Location)"

# Abrir projeto
code .


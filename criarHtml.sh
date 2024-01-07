#!/bin/bash

# Função para pedir o nome do projeto
function ask_for_project_name {
    echo "Digite o nome do projeto (ou 'sair' para encerrar):"
    read project_name

    if [ "$project_name" == "sair" ]; then
        echo "Encerrando o script."
        exit 0
    elif [ -z "$project_name" ]; then
        echo "Nome do projeto não pode estar vazio."
        ask_for_project_name
    fi
}

# Pedir o nome do projeto inicialmente
ask_for_project_name

# Criação do diretório do projeto
echo "Digite o nome do projeto:"
read project_name

if [ -z "$project_name" ]; then
    echo "Nome do projeto não pode estar vazio."
    exit 1
fi

mkdir "$project_name"
cd "$project_name"

# Criação dos arquivos e pastas
mkdir styles
mkdir scripts
mkdir assets
touch index.html
touch styles/style.css
touch scripts/main.js
touch .gitignore

# Preenchimento do arquivo HTML
cat <<EOF > index.html
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="Renan Santos" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$project_name</title>
    <meta name="description" content="">

    <link rel="stylesheet" href="styles/style.css">
    <link rel="icon" href="">

    <script src="scripts/main.js" defer type="module"></script>
</head>
<body>
    
</body>
</html>
EOF

# Preenchimento do arquivo style.css
cat <<EOF > styles/style.css
@import url('https://renansantos7.github.io/styles/reset.css');
EOF

# Preenchimento do arquivo .gitignore
cat <<EOF >.gitignore
.vscode
EOF

# Mensagem de sucesso
echo "Projeto criado com sucesso em $(pwd)"

# Abre o projeto
code .


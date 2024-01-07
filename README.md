# Script para Criar Projeto HTML5

<div>
  <img alt="HTML5" title="HTML5" width="30" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original-wordmark.svg" />
  <img alt="CSS3" title="CSS3" width="30" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original-wordmark.svg" />
  <img alt="JavaScript" title="JavaScript" width="30" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" />
</div>
&nbsp;

Dois scripts para criar um projeto HTML 5 com a seguinte estrutura de pastas já pronta:

```
├ assets
├ scripts
│ └ main.js
├ styles
│ └ style.css
├ index.html
├ .gitignore
```

## Para executar
### Em distros Linux
1. Baixe o [script no formato .sh](criarHtml.sh);
2. Clique com o botão direito sobre o arquivo e depois em "Propriedades". Então, marque a caixa de seleção "Executar como programa". Ou abra um terminal na mesma pasta e digite:

```bash
chmod +x criarHtml.sh
```

3. Em seguida, para executar, abra um terminal na mesma pasta em que está o script (ou permaneça naquele já aberto no passo anterior) e execute:

```bash
./criarHtml.sh
```

### No Windows
1. Baixe o [script no formato .ps1](criarHtml.ps1);
2. Abra o Windows Powershell e execute o seguinte comando para poder permitir a execução do script:
```powershell
Set-ExecutionPolicy RemoteSigned
```
3. Em seguinte, navegue até a pasta em que o script foi salvo. Por exemplo, se ele estiver salvo na pasta de Downloads, faça:
```powershell
cd ./Downloads
```
4. Então, execute o script com:
```powershell
./criarHtml.ps1
```
## Executando

A única coisa que o script irá pedir ao ser executado é o nome do projeto. Alternativamente você pode digitar 'sair' para parar a execução. Se nada for digitado, ele pedirá novamente um nome.

Após dar um nome para o projeto ele criará um pasta com esse mesmo nome e os arquivos necessários dentro dela. O nome também será atribuído na tag `<title>` do `<head>` da página html.

## Licensa
Este repositório tem uma [licença MIT](LICENSE)

Obrigado por baixar!

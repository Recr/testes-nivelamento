# Testes Nivelamento
Testes feitos para o processo seletivo.

# Organização e Intruções
Os testes foram separados em pastas com seus respectivos numeros: test1 para os teste de numero 1, e assim por diante.
### Teste 1
Para testar, basta executar o arquivo `main.py` na pasta `test1` em sua IDE de preferência.
#### Funcionamento
- Ao executar, será feita uma requisição a página.
- A resposta será transformada em um formato que pode ser lido.
- Será então buscado as 2 primeiras tags HTML (os dois anexos) <a> que possuem a classe `internal-link` e que possuem o sufixo `.pdf`.
- O link do arquivo pdf será extraído da tag HTML.
- Será baixado os dois arquivos pedidos para a pasta `test1/pdf-files`.
- Um arquivo `.zip` será criado na pasta `test1/zip` contendo os arquivos baixados.

### Teste 2
Para testar, basta executar o arquivo `main2.py` na pasta `test2` em sua IDE de preferência.
Também é necessário instalar as dependencias importadas e ter o JDK instalado (utilizei a versão 17) para a bibliteca tabula.

#### Funcionamento
- É utilizado a biblioteca tabula para adquirir os dados do PDF.
- Para cada tabela das tabelas encontradas é executado uma série de comandos:
  - Para cada tabela, trabalha-se em suas linhas e colunas
  - Cada célula da linha é "limpa" para retirar espaços por exemplo
  - As células das posições 3 e 4 são enviadas para uma função que substitui a abreviação pelo nome completo.
  - A linha é escrita.
  - Retorna um arquivo CSV.
- O arquivo CSV é zipado.

### Teste 3
Para testar, inicialize o container docker com o arquivo `docker-compose.yml`, onde será criado um banco de dados MySQL. Após isso, execute o script `script.sh`.

#### Funcionamento
- É criado um container docker com o MySQL. Ele fica disponível na porta 3307.
- Ao se executar o script:
  - São copiados os arquivos .csv para dentro do container.
  - O arquivo com queries SQL é copiado para dentro do container
  - É executado dentro do container o comando para executar as queries SQL
- Pelos comandos do arquivo SQL, cria-se duas tabelas para acomodar os dados.
- Pelos comandos do arquivo SQL, os dados dos arquivos CSV são importados para dentro das tabelas.
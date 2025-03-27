# Testes Nivelamento
Testes feitos para o processo seletivo.

# Organização e Intruções
Os testes foram separados em pastas com seus respectivos numeros: test1 para os teste de numero 1, e assim por diante.
### Teste 1
Para testar, basta executar o arquivo `main.py` na pasta `test1` em sua IDE de preferência.
#### Funcionamento
- Ao executar, será feita uma requisição à página.
- A resposta será transforma em um formato que pode ser lido.
- Será então buscado as 2 primeiras tags HTML (os dois anexos) <a> que possuem a classe `internal-link` e que possuem o sufixo `.pdf`.
- O link do arquivo pdf será extraído da tag HTML.
- Será baixado os dois arquivos pedidos para a pasta `test1/pdf-files`.
- Um arquivo `.zip` será criado na pasta `test1/zip` contendo os arquivos baixados.

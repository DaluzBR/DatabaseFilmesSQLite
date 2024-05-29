# DESAFIO DE PROJETO: Montando Consultas Relacionais no SQLite.

<hr />

## Descrição

<p>
Realização de consultas no banco de dados SQLite com o objetivo de trazer alguns dados para análises.
</p>


## Aviso

<p>O presente repositório trata-se de um exemplo de projeto para meu próprio aprendizado. Portanto, os arquivos aqui presentes são disponibilizados "como estão". Caso o leitor tenha algum interesse neste repositório, tenha em mente que de forma alguma o criador deste repositório se responsabiliza por qualquer dano, prejuízo ou adversidades que o leitor venha a ter em decorrência do suposto uso do material aqui presente. Caso o leitor(a) queira usar o material presente neste repositório, o mesmo deve ter também em mente que é por sua própria conta e risco.</p>

## Proposta
Realizar 12 consultas ao banco de dados, cada uma retornando um tipo de informação.
O banco de dados está modelado da seguinte maneira:

![Diagrama banco de dados](IMAGENS/IMG_DIAGRAMA.png)

As tabelas sao descritas conforme a seguir:

**Filmes**

Tabela responsável por armazenar informações dos filmes.

**Atores**

Tabela responsável por armazenar informações dos atores.

**Generos**

Tabela responsável por armazenar os gêneros dos filmes.

**ElencoFilme**

Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e atores, ou seja, um ator pode trabalhar em muitos filmes, e filmes
podem ter muitos atores.

**FilmesGenero**

Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e gêneros, ou seja, um filme pode ter mais de um gênero, e um genêro pode fazer parte de muitos filmes.

## Preparando o banco de dados
Para usar o banco de dados é necessário executar o arquivo **Filmes_Dump.sql**, no SQLite, presente na pasta **Scripts** deste repositório ([ou clique aqui](Scripts\Filmes_Dump.sql)).
Este script irá criar um banco chamado **Filmes**, contendo as tabelas e os dados necessários para realizar o desafio.

![Carregar banco de dados](Imagens\IMG_READ_FILMES_DUMP_SQL.png)

## Exercício: Consulta banco de dados
As imagens abaixo mostram as consultas realizadas no banco de dados bem como os seus respectivos resultados.

## 1 - Buscar o nome e ano dos filmes

![Exercicio 1](Imagens\IMG_ANSWER_EX_01.png)

## 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

![Exercicio 2](Imagens\IMG_ANSWER_EX_02.png)

## 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

![Exercicio 3](Imagens\IMG_ANSWER_EX_03.png)

## 4 - Buscar os filmes lançados em 1997

![Exercicio 4](Imagens\IMG_ANSWER_EX_04.png)

## 5 - Buscar os filmes lançados APÓS o ano 2000

![Exercicio 5](Imagens\IMG_ANSWER_EX_05.png)

## 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

![Exercicio 6](Imagens\IMG_ANSWER_EX_06.png)

## 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente.

![Exercicio 7](Imagens\IMG_ANSWER_EX_07.png)

## 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome.

![Exercicio 8](Imagens\IMG_ANSWER_EX_08.png)

## 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome.

![Exercicio 9](Imagens\IMG_ANSWER_EX_09.png)

## 10 - Buscar o nome do filme e o gênero.

![Exercicio 10](Imagens\IMG_ANSWER_EX_10.png)

## 11 - Buscar o nome do filme e o gênero do tipo "Mistério".

![Exercicio 11](Imagens\IMG_ANSWER_EX_11.png)

## 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel.

![Exercicio 12](Imagens\IMG_ANSWER_EX_12.png)

## Requisitos

<p>* SQLite V3.42.0</p>
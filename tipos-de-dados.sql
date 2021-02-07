/*
1.NÚMEROS:
Inteiros
tinyint - 1 byte
smallint - 2 bytes
mediumint - 3 bytes
int - 4 bytes
bigint - 8 bytes

Ponto Flutuante
float - precisão simples - 4 bytes
double - precisão dupla - 8 bytes
 *Como declarar: float(7,2) - 7 é a quantia de números, 2 quantos são
exibidos após a vírgula.

Fixos
decimal ou numeric - até 65 dígitos.
 *Como declarar: decimal(5,2) vai de -999,99 até 999,99
 
Bit
Armazena valores até 64ex. 
Exemplo:
bit(1) - Pode ser 1 ou 0.
bit(2) - Pode ser 00,11  01,10...
 *É muito usado para campos lógicos, onde 1 é verdadeiro e 0 é falso.
 
ATRIBUTOS DOS CAMPOS NUMÉRICOS:
Signed ou Unsigned - Se vai possuir ou não sinal no número. 
Zerofill - Preenche com zeros os espaços.
Auto_increment - Sequência auto incrementada (1,2,3,4,5...) 

Erros out of range ocorrem quando os valores estouram os limites.

2.DATA E HORA
date - 1000-01-01 até 9999-12-31
datetime - 1000-01-01 00:00:00 até 9999-12-31 23:59:59
timestamp - 1970-01-01 00:00:01 UTC até 2038-01-19 UTC
time -  - 838:59:59 e 839:59:59
year - 1901 até 2155 (pode ser expresso em 2 ou 4 dígitos).

3. STRINGS
char - o que faltar para o tamanho do campo, ele preenche em vazio.
varchar - armazena exatamente o que foi preenchido, não armazena vazio.

BINÁRIOS
binary - Cadeia de caracteres com valor fixo (0 a 255). 
Expressos em binário. Funciona semelhante ao CHAR 
(armazena espaços vazios se não preencher todo).
varbinary - cadeia de caracteres com valor variado de 0 a 255.
Expressos em binário, semelhante ao varchar.

BLOB binário longo é dividido em:
tinyblob
blob
mediumblob
longblob

TEXT - texto longo.
tinytext
text
mediumtext
longtest

ENUM
permite armazenar uma lista pré-definida de valores.
ex.: situacao ENUM('Pendente', 'Regular')

SET e COLLATE
Que tipo de caracteres serão suportados (ex.:UTF-8).

4. SPACIAL
geometry
point
linestring
polygon
*/
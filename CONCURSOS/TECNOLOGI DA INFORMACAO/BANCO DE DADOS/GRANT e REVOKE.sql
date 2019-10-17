Para verificar privilégios:
SHOW GRANTS FOR ana@localhost;
===============================
Sintaxe:

GRANT lista_privilégios
ON [nome_banco.]tabela
TO usuário1 [IDENTIFIED BY 'senha1'],
usuário2 [IDENTIFIED BY 'senha2'] ...
[WITH GRANT OPTION]

===============================
Garantir acesso a um usuário de nome julia, sem privilégios:

GRANT USAGE
ON *.*
TO julia@localhost IDENTIFIED BY '1234';

===============================
 Dar privilégios globais a um usuário de nome alexandre:

 GRANT ALL
 ON *.*
 TO alexandre IDENTIFIED BY '1234'
 WITH GRANT OPTION

===============================
Dar privilégios específicos para execução de comandos DML em todas as tabelas do banco db_biblioteca ao usuário ana:

GRANT SELECT, INSERT, UPDATE, DELETE
ON db_biblioteca.*
TO ana@localhost;

===============================
Dar todos os privilégios no banco db_biblioteca à usuária ana:

GRANT ALL
ON db_biblioteca.*
TO ana@localhost;

===============================
Dar privilégios específicos para execução de comandos DML em todas as tabelas do banco db_biblioteca ao usuário ana:

GRANT SELECT, INSERT, UPDATE, DELETE
ON db_biblioteca.*
TO ana@localhost;

===============================
Garantir privilégios de inserção e atualização de registros e efetuar consultas na a tabela tbl_autores do banco de dados db_biblioteca ao usuário julia:

GRANT SELECT, INSERT, UPDATE
ON db_biblioteca.tbl_autores
TO julia@localhost;

===============================
Garantir o privilégio de consultar nomes e sobrenomes e alterar somente nomes dos autores (coluna nome-autor) da tabela tbl_autores do banco db_biblioteca ao usuário fabio:

GRANT SELECT (nome_autor, sobrenome_autor), UPDATE (nome_autor)
ON db_biblioteca.tbl_autores
TO fabio@localhost;


==================================================================================
==================================================================================
==================================================================================

Sintaxe:

REVOKE lista_privilégios
ON objeto
FROM usuário1, usuário2, ...;

===============================
Remover todos os privilégios em todos os bancos de dados dos usuários alexandre e ana:

REVOKE ALL, GRANT OPTION
FROM alexandre, ana@localhost;

===============================

Vamos revogar o privilégio de exclusão de dados no banco db_biblioteca à usuária ana:

REVOKE DELETE
ON db_biblioteca.*
FROM ana@localhost;

===============================
Retirando o privilégio de atualização da coluna nome_autor do banco db_biblioteca, na tabela de autores, do usuário fabio:

REVOKE UPDATE (nome_autor)
ON db_biblioteca.tbl_autores
FROM fabio@localhost;

===============================

CREATE OR REPLACE PROCEDURE criar_filme (
    p_nome VARCHAR2,
    p_data_estreia DATE,
    p_classificacao INTEGER,
    p_duracao INTERVAL DAY TO SECOND,
    p_sinopse CLOB,
    p_cartaz VARCHAR2
) AS
BEGIN
    INSERT INTO filme (nome, dataEstreia, classificacao, duracao, sinopse, cartaz)
    VALUES (p_nome, p_data_estreia, p_classificacao, p_duracao, p_sinopse, p_cartaz);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Filme criado com sucesso!');
END criar_filme;

CREATE OR REPLACE PROCEDURE criar_ator (
    p_nome VARCHAR2,
    p_data_nascimento DATE,
    p_data_obito DATE,
    p_nacionalidade VARCHAR2
) AS
BEGIN
    INSERT INTO ator (nome, dataNascimento, dataObito, nacionalidade)
    VALUES (p_nome, p_data_nascimento, p_data_obito, p_nacionalidade);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Ator criado com sucesso!');
END criar_ator;

CREATE OR REPLACE PROCEDURE criar_diretor (
    p_nome VARCHAR2,
    p_data_nascimento DATE,
    p_data_obito DATE,
    p_nacionalidade VARCHAR2
) AS
BEGIN
    INSERT INTO diretor (nome, dataNascimento, dataObito, nacionalidade)
    VALUES (p_nome, p_data_nascimento, p_data_obito, p_nacionalidade);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Diretor criado com sucesso!');
END criar_diretor;

CREATE OR REPLACE PROCEDURE criar_produtora (
    p_nome VARCHAR2
) AS
BEGIN
    INSERT INTO produtora (nome)
    VALUES (p_nome);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Produtora criada com sucesso!');
END criar_produtora;

CREATE OR REPLACE PROCEDURE criar_roteirista (
    p_nome VARCHAR2,
    p_data_nascimento DATE,
    p_data_obito DATE,
    p_nacionalidade VARCHAR2
) AS
BEGIN
    INSERT INTO roteirista (nome, dataNascimento, dataObito, nacionalidade)
    VALUES (p_nome, p_data_nascimento, p_data_obito, p_nacionalidade);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Roteirista criado com sucesso!');
END criar_roteirista;

CREATE OR REPLACE PROCEDURE criar_genero (
    p_tipo VARCHAR2
) AS
BEGIN
    INSERT INTO genero (tipo)
    VALUES (p_tipo);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Gênero criado com sucesso!');
END criar_genero;

CREATE OR REPLACE PROCEDURE criar_premiacao (
    p_nome VARCHAR2,
    p_categoria VARCHAR2,
    p_ano INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    INSERT INTO premiacao (nome, categoria, ano, idFilme)
    VALUES (p_nome, p_categoria, p_ano, p_id_filme);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Premiação criada com sucesso!');
END criar_premiacao;

CREATE OR REPLACE PROCEDURE criar_critico (
    p_nome VARCHAR2,
    p_data_nascimento DATE,
    p_data_obito DATE,
    p_nacionalidade VARCHAR2
) AS
BEGIN
    INSERT INTO critico (nome, dataNascimento, dataObito, nacionalidade)
    VALUES (p_nome, p_data_nascimento, p_data_obito, p_nacionalidade);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Crítico criado com sucesso!');
END criar_critico;

CREATE OR REPLACE PROCEDURE criar_espectador (
    p_nome VARCHAR2,
    p_data_nascimento DATE,
    p_data_obito DATE,
    p_nacionalidade VARCHAR2
) AS
BEGIN
    INSERT INTO espectador (nome, dataNascimento, dataObito, nacionalidade)
    VALUES (p_nome, p_data_nascimento, p_data_obito, p_nacionalidade);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Espectador criado com sucesso!');
END criar_espectador;

CREATE OR REPLACE PROCEDURE criar_avaliacao_espectador (
    p_id_espectador INTEGER,
    p_id_filme INTEGER,
    p_comentario CLOB,
    p_nota NUMBER
) AS
BEGIN
    INSERT INTO avaliacaoEspectador (idEspectador, idFilme, comentario, nota)
    VALUES (p_id_espectador, p_id_filme, p_comentario, p_nota);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Avaliação do espectador criada com sucesso!');
END criar_avaliacao_espectador;

CREATE OR REPLACE PROCEDURE criar_avaliacao_critico (
    p_id_critico INTEGER,
    p_id_filme INTEGER,
    p_comentario CLOB,
    p_nota NUMBER
) AS
BEGIN
    INSERT INTO avaliacaoCritico (idCritico, idFilme, comentario, nota)
    VALUES (p_id_critico, p_id_filme, p_comentario, p_nota);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Avaliação do crítico criada com sucesso!');
END criar_avaliacao_critico;

CREATE OR REPLACE PROCEDURE relacionar_ator_filme (
    p_id_ator INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    INSERT INTO atuou (idAtor, idFilme)
    VALUES (p_id_ator, p_id_filme);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relacionamento entre ator e filme estabelecido com sucesso!');
END relacionar_ator_filme;

CREATE OR REPLACE PROCEDURE relacionar_diretor_filme (
    p_id_diretor INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    INSERT INTO dirigiu (idDiretor, idFilme)
    VALUES (p_id_diretor, p_id_filme);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relacionamento entre diretor e filme estabelecido com sucesso!');
END relacionar_diretor_filme;

CREATE OR REPLACE PROCEDURE relacionar_produtora_filme (
    p_id_produtora INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    INSERT INTO produziu (idProdutora, idFilme)
    VALUES (p_id_produtora, p_id_filme);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relacionamento entre produtora e filme estabelecido com sucesso!');
END relacionar_produtora_filme;

CREATE OR REPLACE PROCEDURE relacionar_roteirista_filme (
    p_id_roteirista INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    INSERT INTO roteirizou (idRoteirista, idFilme)
    VALUES (p_id_roteirista, p_id_filme);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relacionamento entre roteirista e filme estabelecido com sucesso!');
END relacionar_roteirista_filme;

CREATE OR REPLACE PROCEDURE relacionar_genero_filme (
    p_id_genero INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    INSERT INTO filmeGenero (idFilme, idGenero)
    VALUES (p_id_filme, p_id_genero);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relacionamento entre gênero e filme estabelecido com sucesso!');
END relacionar_genero_filme;
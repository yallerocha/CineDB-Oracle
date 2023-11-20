CREATE OR REPLACE PROCEDURE deletar_ator (
    p_id_ator INTEGER
) AS
BEGIN
    DELETE FROM ator WHERE id = p_id_ator;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Ator deletado com sucesso!');
END deletar_ator;
/

CREATE OR REPLACE PROCEDURE deletar_diretor (
    p_id_diretor INTEGER
) AS
BEGIN
    DELETE FROM diretor WHERE id = p_id_diretor;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Diretor deletado com sucesso!');
END deletar_diretor;
/

CREATE OR REPLACE PROCEDURE deletar_produtora (
    p_id_produtora INTEGER
) AS
BEGIN
    DELETE FROM produtora WHERE id = p_id_produtora;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Produtora deletada com sucesso!');
END deletar_produtora;
/

CREATE OR REPLACE PROCEDURE deletar_roteirista (
    p_id_roteirista INTEGER
) AS
BEGIN
    DELETE FROM roteirista WHERE id = p_id_roteirista;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Roteirista deletado com sucesso!');
END deletar_roteirista;
/

CREATE OR REPLACE PROCEDURE deletar_genero (
    p_id_genero INTEGER
) AS
BEGIN
    DELETE FROM genero WHERE id = p_id_genero;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Gênero deletado com sucesso!');
END deletar_genero;
/

CREATE OR REPLACE PROCEDURE deletar_premiacao (
    p_id_premiacao INTEGER
) AS
BEGIN
    DELETE FROM premiacao WHERE id = p_id_premiacao;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Premiação deletada com sucesso!');
END deletar_premiacao;
/

CREATE OR REPLACE PROCEDURE deletar_critico (
    p_id_critico INTEGER
) AS
BEGIN
    DELETE FROM critico WHERE id = p_id_critico;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Crítico deletado com sucesso!');
END deletar_critico;
/

CREATE OR REPLACE PROCEDURE deletar_espectador (
    p_id_espectador INTEGER
) AS
BEGIN
    DELETE FROM espectador WHERE id = p_id_espectador;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Espectador deletado com sucesso!');
END deletar_espectador;
/

CREATE OR REPLACE PROCEDURE deletar_filme (
    p_id_filme INTEGER
) AS
BEGIN
    DELETE FROM filme WHERE id = p_id_filme;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Filme deletado com sucesso!');
END deletar_filme;
/

CREATE OR REPLACE PROCEDURE deletar_relacao_ator_filme (
    p_id_ator INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    DELETE FROM atuou
    WHERE idAtor = p_id_ator AND idFilme = p_id_filme;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relação entre ator e filme deletada com sucesso!');
END deletar_relacao_ator_filme;
/

CREATE OR REPLACE PROCEDURE deletar_relacao_diretor_filme (
    p_id_diretor INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    DELETE FROM dirigiu
    WHERE idDiretor = p_id_diretor AND idFilme = p_id_filme;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relação entre diretor e filme deletada com sucesso!');
END deletar_relacao_diretor_filme;
/

CREATE OR REPLACE PROCEDURE deletar_relacao_produtora_filme (
    p_id_produtora INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    DELETE FROM produziu
    WHERE idProdutora = p_id_produtora AND idFilme = p_id_filme;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relação entre produtora e filme deletada com sucesso!');
END deletar_relacao_produtora_filme;
/

CREATE OR REPLACE PROCEDURE deletar_relacao_roteirista_filme (
    p_id_roteirista INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    DELETE FROM roteirizou
    WHERE idRoteirista = p_id_roteirista AND idFilme = p_id_filme;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relação entre roteirista e filme deletada com sucesso!');
END deletar_relacao_roteirista_filme;
/

CREATE OR REPLACE PROCEDURE deletar_relacao_genero_filme (
    p_id_genero INTEGER,
    p_id_filme INTEGER
) AS
BEGIN
    DELETE FROM generoFilme
    WHERE idGenero = p_id_genero AND idFilme = p_id_filme;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Relação entre gênero e filme deletada com sucesso!');
END deletar_relacao_genero_filme;
/
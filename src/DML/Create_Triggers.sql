CREATE OR REPLACE TRIGGER filme_nome
BEFORE INSERT OR UPDATE OF nome ON filme
FOR EACH ROW
BEGIN
    :new.nome := LOWER(TRIM(:new.nome));
END;

CREATE OR REPLACE TRIGGER ator_nome
BEFORE INSERT OR UPDATE OF nome ON ator
FOR EACH ROW
BEGIN
    :new.nome := LOWER(TRIM(:new.nome));
END;

CREATE OR REPLACE TRIGGER diretor_nome
BEFORE INSERT OR UPDATE OF nome ON diretor
FOR EACH ROW
BEGIN
    :new.nome := LOWER(TRIM(:new.nome));
END;

CREATE OR REPLACE TRIGGER produtora_nome
BEFORE INSERT OR UPDATE OF nome ON produtora
FOR EACH ROW
BEGIN
    :new.nome := LOWER(TRIM(:new.nome));
END;

CREATE OR REPLACE TRIGGER roteirista_nome
BEFORE INSERT OR UPDATE OF nome ON roteirista
FOR EACH ROW
BEGIN
    :new.nome := LOWER(TRIM(:new.nome));
END;

CREATE OR REPLACE TRIGGER critico_nome
BEFORE INSERT OR UPDATE OF nome ON critico
FOR EACH ROW
BEGIN
    :new.nome := LOWER(TRIM(:new.nome));
END;

CREATE OR REPLACE TRIGGER espectador_nome
BEFORE INSERT OR UPDATE OF nome ON espectador
FOR EACH ROW
BEGIN
    :new.nome := LOWER(TRIM(:new.nome));
END;

CREATE OR REPLACE TRIGGER atualiza_notaPublico
AFTER INSERT OR UPDATE OF nota ON avaliacaoEspectador
FOR EACH ROW
BEGIN
    :new.nome := LOWER(TRIM(:new.nome));
END;

CREATE OR REPLACE TRIGGER atualizar_media_espectador
AFTER INSERT OR UPDATE OF nota ON AvaliacaoEspectador
FOR EACH ROW
DECLARE
    media_atual NUMBER;
BEGIN
    SELECT AVG(nota) INTO media_atual
    FROM AvaliacaoEspectador
    WHERE idFilme = :new.idFilme;

    UPDATE filme
    SET notaPublico = media_atual
    WHERE id = :new.idFilme;
END;

CREATE OR REPLACE TRIGGER atualizar_media_critica
AFTER INSERT OR UPDATE OF nota ON AvaliacaoCritico
FOR EACH ROW
DECLARE
    media_atual NUMBER;
BEGIN
    SELECT AVG(nota) INTO media_atual
    FROM AvaliacaoCritico
    WHERE idFilme = :new.idFilme;

    UPDATE filme
    SET notaCritica = media_atual
    WHERE id = :new.idFilme;
END;
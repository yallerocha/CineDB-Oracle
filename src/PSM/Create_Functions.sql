CREATE OR REPLACE FUNCTION obter_numero_filmes_por_genero(p_id_genero INTEGER)
RETURN INTEGER
AS
  v_contagem INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_contagem
  FROM filmeGenero
  WHERE idGenero = p_id_genero;

  RETURN NVL(v_contagem, 0); 
END obter_numero_filmes_por_genero;

CREATE OR REPLACE FUNCTION filmes_por_ator(p_id_ator INTEGER)
RETURN INTEGER
AS
  v_numero_filmes INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_numero_filmes
  FROM atuou
  WHERE idAtor = p_id_ator;

  RETURN v_numero_filmes;
END filmes_por_ator;

CREATE OR REPLACE FUNCTION filmes_por_diretor(p_id_diretor INTEGER)
RETURN INTEGER
AS
  v_numero_filmes INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_numero_filmes
  FROM dirigiu
  WHERE idDiretor = p_id_diretor;

  RETURN v_numero_filmes;
END filmes_por_diretor;

CREATE OR REPLACE FUNCTION filmes_por_produtora(p_id_produtora INTEGER)
RETURN INTEGER
AS
  v_numero_filmes INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_numero_filmes
  FROM produziu
  WHERE idProdutora = p_id_produtora;

  RETURN v_numero_filmes;
END filmes_por_produtora;

CREATE OR REPLACE FUNCTION filmes_por_roteirista(p_id_roteirista INTEGER)
RETURN INTEGER
AS
  v_numero_filmes INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_numero_filmes
  FROM roteirizou
  WHERE idRoteirista = p_id_roteirista;

  RETURN v_numero_filmes;
END filmes_por_roteirista;

CREATE OR REPLACE FUNCTION premios_por_genero(p_id_genero INTEGER)
RETURN INTEGER
AS
  v_numero_premios INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_numero_premios
  FROM premiacao p
  JOIN filme f ON p.idFilme = f.id
  JOIN filmeGenero fg ON f.id = fg.idFilme
  WHERE fg.idGenero = p_id_genero;

  RETURN v_numero_premios;
END premios_por_genero;

CREATE OR REPLACE FUNCTION filmes_duracao_maior_que(p_duracao_limite INTERVAL DAY TO SECOND)
RETURN INTEGER
AS
  v_quantidade INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_quantidade
  FROM filme
  WHERE duracao > p_duracao_limite;

  RETURN v_quantidade;
END filmes_duracao_maior_que;

CREATE OR REPLACE FUNCTION filmes_duracao_menor_que(p_duracao_limite INTERVAL DAY TO SECOND)
RETURN INTEGER
AS
  v_quantidade INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_quantidade
  FROM filme
  WHERE duracao < p_duracao_limite;

  RETURN v_quantidade;
END filmes_duracao_menor_que;

CREATE OR REPLACE FUNCTION filmes_nota_critica_maior_que(p_nota_limite NUMBER)
RETURN INTEGER
AS
  v_quantidade INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_quantidade
  FROM filme
  WHERE notaCritica > p_nota_limite;

  RETURN v_quantidade;
END filmes_nota_critica_maior_que;

CREATE OR REPLACE FUNCTION filmes_nota_critica_menor_que(p_nota_limite NUMBER)
RETURN INTEGER
AS
  v_quantidade INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_quantidade
  FROM filme
  WHERE notaCritica < p_nota_limite;

  RETURN v_quantidade;
END filmes_nota_critica_menor_que;

CREATE OR REPLACE FUNCTION filmes_nota_publico_maior_que(p_nota_limite NUMBER)
RETURN INTEGER
AS
  v_quantidade INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_quantidade
  FROM filme
  WHERE notaPublico > p_nota_limite;

  RETURN v_quantidade;
END filmes_nota_publico_maior_que;

CREATE OR REPLACE FUNCTION filmes_nota_publico_menor_que(p_nota_limite NUMBER)
RETURN INTEGER
AS
  v_quantidade INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_quantidade
  FROM filme
  WHERE notaPublico < p_nota_limite;

  RETURN v_quantidade;
END filmes_nota_publico_menor_que;

CREATE OR REPLACE FUNCTION filmes_nota_critica_igual_a(p_nota_limite NUMBER)
RETURN INTEGER
AS
  v_quantidade INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_quantidade
  FROM filme
  WHERE notaCritica = p_nota_limite;

  RETURN v_quantidade;
END filmes_nota_critica_igual_a;

CREATE OR REPLACE FUNCTION filmes_nota_publico_igual_a(p_nota_limite NUMBER)
RETURN INTEGER
AS
  v_quantidade INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO v_quantidade
  FROM filme
  WHERE notaPublico = p_nota_limite;

  RETURN v_quantidade;
END filmes_nota_publico_igual_a;

CREATE OR REPLACE FUNCTION filmes_por_nacionalidade_atores(p_nacionalidade VARCHAR2)
RETURN INTEGER
AS
  v_quantidade INTEGER;
BEGIN
  SELECT COUNT(DISTINCT f.id)
  INTO v_quantidade
  FROM ator a
  JOIN atuou at ON a.id = at.idAtor
  JOIN filme f ON at.idFilme = f.id
  WHERE a.nacionalidade = p_nacionalidade;

  RETURN v_quantidade;
END filmes_por_nacionalidade;
CREATE TABLE filme (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    dataEstreia DATE NOT NULL,
    classificacao INTEGER CHECK (classificacao IN (0, 10, 12, 14, 16, 18)) NOT NULL,
    duracao INTERVAL DAY TO SECOND NOT NULL,
    notaCritica NUMBER(1,1) DEFAULT 0.0,
    notaPublico NUMBER(1,1) DEFAULT 0.0,
    sinopse CLOB NOT NULL,
    cartaz VARCHAR2(255)
);

CREATE TABLE ator (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    dataNascimento DATE NOT NULL,
    dataObito DATE,
    nacionalidade VARCHAR2(50) NOT NULL
);

CREATE TABLE diretor (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    dataNascimento DATE NOT NULL,
    dataObito DATE,
    nacionalidade VARCHAR2(50) NOT NULL
);

CREATE TABLE produtora (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL
);

CREATE TABLE roteirista (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    dataNascimento DATE NOT NULL,
    dataObito DATE,
    nacionalidade VARCHAR2(50) NOT NULL
);

CREATE TABLE genero (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tipo VARCHAR2(50) NOT NULL
);

CREATE TABLE premiacao (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    categoria VARCHAR2(100) NOT NULL,
    ano INTEGER NOT NULL,
    idFilme INTEGER REFERENCES filme(id) ON DELETE CASCADE
);

CREATE TABLE critico (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    dataNascimento DATE NOT NULL,
    dataObito DATE,
    nacionalidade VARCHAR2(50) NOT NULL
);

CREATE TABLE espectador (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    dataNascimento DATE NOT NULL,
    dataObito DATE,
    nacionalidade VARCHAR2(50) NOT NULL
);

CREATE TABLE atuou (
    idAtor INTEGER REFERENCES ator(id) ON DELETE SET NULL,
    idFilme INTEGER REFERENCES filme(id) ON DELETE CASCADE,
    PRIMARY KEY (idAtor, idFilme)
);

CREATE TABLE dirigiu (
    idDiretor INTEGER REFERENCES diretor(id) ON DELETE SET NULL,
    idFilme INTEGER REFERENCES filme(id) ON DELETE CASCADE,
    PRIMARY KEY (idDiretor, idFilme)
);

CREATE TABLE produziu (
    idProdutora INTEGER REFERENCES produtora(id) ON DELETE SET NULL,
    idFilme INTEGER REFERENCES filme(id) ON DELETE CASCADE,
    PRIMARY KEY (idProdutora, idFilme)
);

CREATE TABLE roteirizou (
    idRoteirista INTEGER REFERENCES roteirista(id) ON DELETE SET NULL,
    idFilme INTEGER REFERENCES filme(id) ON DELETE CASCADE,
    PRIMARY KEY (idRoteirista, idFilme)
);

CREATE TABLE avaliacaoEspectador (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    idEspectador INTEGER REFERENCES espectador(id) ON DELETE CASCADE,
    idFilme INTEGER REFERENCES filme(id) ON DELETE CASCADE,
    comentario CLOB,
    nota NUMBER(1,1) CHECK (nota >= 0 AND nota <= 5)
);

CREATE TABLE avaliacaoCritico (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    idCritico INTEGER REFERENCES critico(id) ON DELETE CASCADE,
    idFilme INTEGER REFERENCES filme(id) ON DELETE CASCADE,
    comentario CLOB,
    nota NUMBER(1,1) CHECK (nota >= 0 AND nota <= 5)
);

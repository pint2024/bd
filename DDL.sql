DROP TABLE IF EXISTS perfil CASCADE;
DROP TABLE IF EXISTS utilizador CASCADE;
DROP TABLE IF EXISTS categoria CASCADE;
DROP TABLE IF EXISTS topico CASCADE;
DROP TABLE IF EXISTS atividade CASCADE;
DROP TABLE IF EXISTS gosto CASCADE;
DROP TABLE IF EXISTS estado CASCADE;
DROP TABLE IF EXISTS revisao CASCADE;
DROP TABLE IF EXISTS comentario CASCADE;
DROP TABLE IF EXISTS classificacao CASCADE;
DROP TABLE IF EXISTS notificacao CASCADE;




CREATE TABLE perfil ( -- perfil do utilizador
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	perfil					VARCHAR(50)			NOT NULL,
	CONSTRAINT pk_perfil PRIMARY KEY (id)
);


CREATE TABLE utilizador (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	tag						VARCHAR(21)			UNIQUE,
	nome					VARCHAR(100)		NOT NULL,
	sobrenome				VARCHAR(100)		NOT NULL,
	email					VARCHAR(100)		NOT NULL	UNIQUE,
	senha					VARCHAR(500)		NOT NULL,
	data_nascimento			DATE,
	imagem					VARCHAR(500),
	linkedin				VARCHAR(500),
	instagram				VARCHAR(500),
	facebook				VARCHAR(500),
	perfil					INT					NOT NULL,
	CONSTRAINT pk_utilizador PRIMARY KEY (id),
	CONSTRAINT fk_utilizador_perfil FOREIGN KEY (perfil) REFERENCES perfil (id)
);


CREATE TABLE categoria ( -- categoria do topico
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	categoria				VARCHAR(50)			NOT NULL,
	CONSTRAINT pk_categoria PRIMARY KEY (id)
);


CREATE TABLE topico ( -- topico da ativdade
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	area					VARCHAR(50)			NOT NULL,
	categoria				INT					NOT NULL,
	CONSTRAINT pk_topico PRIMARY KEY (id),
	CONSTRAINT fk_topico_categoria FOREIGN KEY (categoria) REFERENCES categoria (id)
);


CREATE TABLE estado ( -- estado da revisão | 1 = Em espera; 2 = Aceite; 3 = Recusado
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	estado					VARCHAR(100),
	CONSTRAINT pk_estado PRIMARY KEY (id)
);


CREATE TABLE revisao ( -- revisão da atividade
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	motivo					VARCHAR(500)		NOT NULL,
	utilizador				INT					NOT NULL,
	estado					INT					NOT NULL	DEFAULT (1),
	CONSTRAINT pk_revisao PRIMARY KEY (id),
	CONSTRAINT fk_revisao_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id),
	CONSTRAINT fk_revisao_estado FOREIGN KEY (estado) REFERENCES estado (id)
);


CREATE TABLE atividade (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	titulo					VARCHAR(100)		NOT NULL,
	descricao				VARCHAR(500)		NOT NULL,
	endereco				VARCHAR(500),
	preco					MONEY,
	data_evento				TIMESTAMP,
	imagem					VARCHAR(500),
	topico					INT					NOT NULL,
	revisao					INT,
	CONSTRAINT pk_atividade PRIMARY KEY (id),
	CONSTRAINT fk_atividade_topico FOREIGN KEY (topico) REFERENCES topico (id),
	CONSTRAINT fk_atividade_revisao FOREIGN KEY (revisao) REFERENCES revisao (id)
);


CREATE TABLE gosto (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	atividade				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_gosto PRIMARY KEY (id),
	CONSTRAINT fk_gosto_atividade FOREIGN KEY (atividade) REFERENCES atividade (id),
	CONSTRAINT fk_gosto_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE comentario ( -- comentario da atividade
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	comentario				VARCHAR(500)		NOT NULL,
	atividade				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_comentario PRIMARY KEY (id),
	CONSTRAINT fk_comentario_atividade FOREIGN KEY (atividade) REFERENCES atividade (id),
	CONSTRAINT fk_comentario_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE classificacao ( -- classificacao da atividade
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	classificacao			SMALLINT			NOT NULL,
	atividade				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_classificacao PRIMARY KEY (id),
	CONSTRAINT fk_classificacao_atividade FOREIGN KEY (atividade) REFERENCES atividade (id),
	CONSTRAINT fk_classificacao_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id),
	CONSTRAINT ck_classificacao CHECK (classificacao >= 0 AND classificacao <= 10)
);


CREATE TABLE notificacao (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	visualizado				BOOLEAN				NOT NULL	DEFAULT (FALSE),
	utilizador				INT					NOT NULL,
	titulo					VARCHAR(100)		NOT NULL,
	descricao				VARCHAR(500)		NOT NULL,
	atividade				INT,
	comentario				INT,
	revisao					INT,
	CONSTRAINT pk_notificacao PRIMARY KEY (id),
	CONSTRAINT fk_notificacao_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id),
	CONSTRAINT fk_notificacao_atividade FOREIGN KEY (atividade) REFERENCES atividade (id),
	CONSTRAINT fk_notificacao_comentario FOREIGN KEY (comentario) REFERENCES comentario (id),
	CONSTRAINT fk_notificacao_revisao FOREIGN KEY (revisao) REFERENCES revisao (id),
	CONSTRAINT ck_notificacao_exclusividade CHECK (
		(atividade IS NOT NULL AND comentario IS NULL AND revisao IS NULL) OR
		(atividade IS NULL AND comentario IS NOT NULL AND revisao IS NULL) OR
		(atividade IS NULL AND comentario IS NULL AND revisao IS NOT NULL))
);

CREATE TABLE denuncia (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL,
	titulo					VARCHAR(100)		NOT NULL,
	motivo					VARCHAR(500)		NOT NULL,
	atividade				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_denuncia PRIMARY KEY (id),
	CONSTRAINT fk_denuncia_atividade FOREIGN KEY (atividade) REFERENCES atividade(id),
	CONSTRAINT fk_denuncia_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);
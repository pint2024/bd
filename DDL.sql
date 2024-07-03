DROP TABLE IF EXISTS perfil CASCADE;
DROP TABLE IF EXISTS centro CASCADE;
DROP TABLE IF EXISTS utilizador CASCADE;
DROP TABLE IF EXISTS topico CASCADE;
DROP TABLE IF EXISTS subtopico CASCADE;
DROP TABLE IF EXISTS interesse CASCADE;
DROP TABLE IF EXISTS estado CASCADE;
DROP TABLE IF EXISTS album CASCADE;
DROP TABLE IF EXISTS tipo CASCADE;
DROP TABLE IF EXISTS conteudo CASCADE;
DROP TABLE IF EXISTS participante CASCADE;
DROP TABLE IF EXISTS comentario CASCADE;
DROP TABLE IF EXISTS classificacao CASCADE;
DROP TABLE IF EXISTS revisao CASCADE;
DROP TABLE IF EXISTS notificacao CASCADE;
DROP TABLE IF EXISTS denuncia CASCADE;


CREATE TABLE perfil (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	perfil					VARCHAR(50)			NOT NULL,
	CONSTRAINT pk_perfil PRIMARY KEY (id)
);


CREATE TABLE centro (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	centro					VARCHAR(50)			NOT NULL,
	CONSTRAINT pk_centro PRIMARY KEY (id)
);


CREATE TABLE utilizador (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	tag						VARCHAR(21)			NOT NULL	UNIQUE,
	nome					VARCHAR(100)		NOT NULL,
	sobrenome				VARCHAR(100)		NOT NULL,
	email					VARCHAR(100)		NOT NULL	UNIQUE,
	senha					VARCHAR(500)		NOT NULL,
	verificado				BOOLEAN				NOT NULL	DEFAULT (FALSE),
	inativo					BOOLEAN				NOT NULL	DEFAULT (FALSE),
	imagem					VARCHAR(500),
	linkedin				VARCHAR(500),
	instagram				VARCHAR(500),
	facebook				VARCHAR(500),
	perfil					INT					NOT NULL	DEFAULT (1),
	centro					INT					NOT NULL,
	CONSTRAINT pk_utilizador PRIMARY KEY (id),
	CONSTRAINT fk_utilizador_perfil FOREIGN KEY (perfil) REFERENCES perfil (id),
	CONSTRAINT fk_utilizador_centro FOREIGN KEY (centro) REFERENCES centro (id)
);


CREATE TABLE topico (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	topico					VARCHAR(50)			NOT NULL,
	CONSTRAINT pk_topico PRIMARY KEY (id)
);


CREATE TABLE subtopico (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	area					VARCHAR(50)			NOT NULL,
	topico					INT					NOT NULL,
	CONSTRAINT pk_subtopico PRIMARY KEY (id),
	CONSTRAINT fk_subtopico_topico FOREIGN KEY (topico) REFERENCES topico (id)
);


CREATE TABLE interesse (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	subtopico				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_interesse PRIMARY KEY (id),
	CONSTRAINT fk_interesse_subtopico FOREIGN KEY (subtopico) REFERENCES subtopico (id),
	CONSTRAINT fk_interesse_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE estado (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	estado					VARCHAR(100)		NOT NULL,
	CONSTRAINT pk_estado PRIMARY KEY (id)
);


CREATE TABLE tipo (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	tipo					VARCHAR(50)		NOT NULL,
	CONSTRAINT pk_tipo PRIMARY KEY (id)
);


CREATE TABLE conteudo (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	titulo					VARCHAR(200)		NOT NULL,
	descricao				TEXT				NOT NULL,
	imagem					VARCHAR(500)		NOT NULL,
	endereco				VARCHAR(500)		NOT NULL,
	data_evento				TIMESTAMP, 			-- evento & atividade
	preco					MONEY, 				-- recomendação
	classificacao			SMALLINT, 			-- recomendação
	utilizador				INT					NOT NULL,
	subtopico				INT					NOT NULL,
	tipo					INT					NOT NULL,
	CONSTRAINT pk_conteudo PRIMARY KEY (id),
	CONSTRAINT fk_conteudo_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id),
	CONSTRAINT fk_conteudo_subtopico FOREIGN KEY (subtopico) REFERENCES subtopico (id),
	CONSTRAINT fk_conteudo_tipo FOREIGN KEY (tipo) REFERENCES tipo (id)
);


CREATE TABLE album (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	imagem					VARCHAR(500)		NOT NULL,
	conteudo				INT					NOT NULL,
	CONSTRAINT pk_album PRIMARY KEY (id)
);


CREATE TABLE participante ( -- evento
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	utilizador				INT					NOT NULL,
	conteudo				INT					NOT NULL,
	CONSTRAINT pk_participante PRIMARY KEY (id),
	CONSTRAINT fk_participante_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id),
	CONSTRAINT fk_participante_conteudo FOREIGN KEY (conteudo) REFERENCES conteudo (id)
);


CREATE TABLE comentario (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	comentario				VARCHAR(150)		NOT NULL,
	conteudo				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_comentario PRIMARY KEY (id),
	CONSTRAINT fk_comentario_conteudo FOREIGN KEY (conteudo) REFERENCES conteudo (id),
	CONSTRAINT fk_comentario_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE classificacao (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	classificacao			SMALLINT			NOT NULL,
	conteudo				INT,
	comentario				INT,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_classificacao PRIMARY KEY (id),
	CONSTRAINT fk_classificacao_conteudo FOREIGN KEY (conteudo) REFERENCES conteudo (id),
	CONSTRAINT fk_classificacao_comentario FOREIGN KEY (comentario) REFERENCES comentario (id),
	CONSTRAINT fk_classificacao_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE revisao (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	motivo					VARCHAR(500),
	estado					INT					NOT NULL	DEFAULT (1),
	conteudo				INT,
	comentario				INT,
	CONSTRAINT pk_revisao PRIMARY KEY (id),
	CONSTRAINT fk_revisao_estado FOREIGN KEY (estado) REFERENCES estado (id),
	CONSTRAINT fk_revisao_conteudo FOREIGN KEY (conteudo) REFERENCES conteudo (id),
	CONSTRAINT fk_revisao_comentario FOREIGN KEY (comentario) REFERENCES comentario (id)
);


CREATE TABLE notificacao (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	titulo					VARCHAR(100)		NOT NULL,
	descricao				VARCHAR(500)		NOT NULL,
	visualizado				BOOLEAN				NOT NULL	DEFAULT (FALSE),
	conteudo				INT,
	comentario				INT,
	CONSTRAINT pk_notificacao PRIMARY KEY (id),
	CONSTRAINT fk_notificacao_conteudo FOREIGN KEY (conteudo) REFERENCES conteudo (id),
	CONSTRAINT fk_notificacao_comentario FOREIGN KEY (comentario) REFERENCES comentario (id)
);


CREATE TABLE denuncia (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	motivo					VARCHAR(200)		NOT NULL,
	estado					INT					NOT NULL	DEFAULT (1),
	comentario				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_denuncia PRIMARY KEY (id),
	CONSTRAINT fk_denuncia_estado FOREIGN KEY (estado) REFERENCES estado (id),
	CONSTRAINT fk_denuncia_comentario FOREIGN KEY (comentario) REFERENCES comentario (id),
	CONSTRAINT fk_denuncia_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);

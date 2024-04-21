DROP TABLE IF EXISTS perfil CASCADE;
DROP TABLE IF EXISTS sede CASCADE;
DROP TABLE IF EXISTS utilizador CASCADE;
DROP TABLE IF EXISTS topico CASCADE;
DROP TABLE IF EXISTS subtopico CASCADE;
DROP TABLE IF EXISTS estado CASCADE;
DROP TABLE IF EXISTS formulario CASCADE;
DROP TABLE IF EXISTS campo CASCADE;
DROP TABLE IF EXISTS registo CASCADE;
DROP TABLE IF EXISTS resposta CASCADE;
DROP TABLE IF EXISTS atividade CASCADE;
DROP TABLE IF EXISTS documento CASCADE;
DROP TABLE IF EXISTS gosto CASCADE;
DROP TABLE IF EXISTS comentario CASCADE;
DROP TABLE IF EXISTS subcomentario CASCADE;
DROP TABLE IF EXISTS revisao CASCADE;
DROP TABLE IF EXISTS notificacao CASCADE;
DROP TABLE IF EXISTS denuncia CASCADE;
DROP TABLE IF EXISTS conversa CASCADE;
DROP TABLE IF EXISTS participante CASCADE;
DROP TABLE IF EXISTS mensagem CASCADE;


CREATE TABLE perfil (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	perfil					VARCHAR(50)			NOT NULL,
	CONSTRAINT pk_perfil PRIMARY KEY (id)
);


CREATE TABLE sede (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	sede					VARCHAR(50)			NOT NULL,
	CONSTRAINT pk_sede PRIMARY KEY (id)
);


CREATE TABLE interesse (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	interesse				VARCHAR(50)			NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_interesse PRIMARY KEY (id),
	CONSTRAINT fk_interesse_utilizador FOREIGN (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE utilizador (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	tag						VARCHAR(21)			NOT NULL	UNIQUE,
	nome					VARCHAR(100)		NOT NULL,
	sobrenome				VARCHAR(100)		NOT NULL,
	email					VARCHAR(100)		NOT NULL	UNIQUE,
	senha					VARCHAR(500)		NOT NULL,
	verificado				BOOLEAN				NOT NULL	DEFAULT (TRUE),
	imagem					VARCHAR(500),
	linkedin				VARCHAR(500),
	instagram				VARCHAR(500),
	facebook				VARCHAR(500),
	perfil					INT					NOT NULL	DEFAULT (1),
	sede					INT					NOT NULL,
	CONSTRAINT pk_utilizador PRIMARY KEY (id),
	CONSTRAINT fk_utilizador_perfil FOREIGN KEY (perfil) REFERENCES perfil (id),
	CONSTRAINT fk_utilizador_sede FOREIGN KEY (sede) REFERENCES sede (id)
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


CREATE TABLE estado (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	estado					VARCHAR(100)		NOT NULL,
	CONSTRAINT pk_estado PRIMARY KEY (id)
);


CREATE TABLE album (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	descricao				VARCHAR(100),		NOT NULL,
	imagem					VARCHAR(500),		NOT NULL,
	CONSTRAINT pk_album PRIMARY KEY (id)
);


CREATE TABLE atividade (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	titulo					VARCHAR(100)		NOT NULL,
	descricao				TEXT				NOT NULL,
	imagem					VARCHAR(500),
	endereco				VARCHAR(500)		NOT NULL,
	utilizador				INT					NOT NULL,
	subtopico				INT					NOT NULL,
	CONSTRAINT pk_atividade PRIMARY KEY (id),
	CONSTRAINT fk_atividade_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
	CONSTRAINT fk_atividade_subtopico FOREIGN KEY (subtopico) REFERENCES subtopico (id),
);


CREATE TABLE espaco (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	CONSTRAINT pk_espaco PRIMARY KEY (id)
);


CREATE TABLE evento (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	data_evento				TIMESTAMP,
	album					INT					NOT NULL,
	CONSTRAINT pk_evento PRIMARY KEY (id)
	CONSTRAINT fk_evento_album FOREIGN KEY (album) REFERENCES album (id)
);


CREATE TABLE participar (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	evento					INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_evento_interesados PRIMARY KEY (id),
	CONSTRAINT fk_evento_interesados_evento FOREIGN KEY (evento) REFERENCES atividade (id),
	CONSTRAINT fk_evento_interesados_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE documento (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	documento				VARCHAR(500)		NOT NULL,
	atividade				INT					NOT NULL,
	CONSTRAINT pk_documento PRIMARY KEY (id),
	CONSTRAINT fk_documento_atividade FOREIGN KEY (atividade) REFERENCES atividade (id)
);


CREATE TABLE classificacao (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	atividade				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	classificacao			SMALLINT			NOT NULL,
	CONSTRAINT pk_gosto PRIMARY KEY (id),
	CONSTRAINT fk_gosto_atividade FOREIGN KEY (atividade) REFERENCES atividade (id),
	CONSTRAINT fk_gosto_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE comentario (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	comentario				VARCHAR(150)		NOT NULL,
	atividade				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_comentario PRIMARY KEY (id),
	CONSTRAINT fk_comentario_atividade FOREIGN KEY (atividade) REFERENCES atividade (id),
	CONSTRAINT fk_comentario_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE subcomentario (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	subcomentario			VARCHAR(150)		NOT NULL,
	comentario				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	CONSTRAINT pk_subcomentario PRIMARY KEY (id),
	CONSTRAINT fk_subcomentario_comentario FOREIGN KEY (comentario) REFERENCES comentario (id),
	CONSTRAINT fk_subcomentario_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id)
);


CREATE TABLE revisao (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	motivo					VARCHAR(500)		NOT NULL,
	estado					INT					NOT NULL	DEFAULT (1),
	atividade				INT,
	comentario				INT,
	CONSTRAINT pk_revisao PRIMARY KEY (id),
	CONSTRAINT fk_revisao_estado FOREIGN KEY (estado) REFERENCES estado (id),
	CONSTRAINT fk_revisao_atividade FOREIGN KEY (atividade) REFERENCES atividade (id),
	CONSTRAINT fk_revisao_comentario FOREIGN KEY (comentario) REFERENCES comentario (id),
	CONSTRAINT ck_revisao_exclusividade CHECK (
		(atividade IS NOT NULL AND comentario IS NULL) OR
		(atividade IS NULL AND comentario IS NOT NULL))
);


CREATE TABLE notificacao (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	titulo					VARCHAR(100)		NOT NULL,
	descricao				VARCHAR(500)		NOT NULL,
	visualizado				BOOLEAN				NOT NULL	DEFAULT (FALSE),
	atividade				INT,
	comentario				INT,
	subcomentario			INT,
	CONSTRAINT pk_notificacao PRIMARY KEY (id),
	CONSTRAINT fk_notificacao_atividade FOREIGN KEY (atividade) REFERENCES atividade (id),
	CONSTRAINT fk_notificacao_comentario FOREIGN KEY (comentario) REFERENCES comentario (id),
	CONSTRAINT ck_notificacao_exclusividade CHECK (
		(atividade IS NOT NULL AND comentario IS NULL AND subcomentario IS NULL) OR
		(atividade IS NULL AND comentario IS NOT NULL AND subcomentario IS NULL) OR
		(atividade IS NULL AND comentario IS NULL AND subcomentario IS NOT NULL))
);


CREATE TABLE denuncia (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	motivo					VARCHAR(500)		NOT NULL,
	atividade				INT,
	comentario				INT,
	utilizador				INT,
	subcomentario			INT,
	CONSTRAINT pk_denuncia PRIMARY KEY (id),
	CONSTRAINT fk_denuncia_atividade FOREIGN KEY (atividade) REFERENCES atividade(id),
	CONSTRAINT fk_denuncia_comentario FOREIGN KEY (comentario) REFERENCES comentario(id),
	CONSTRAINT fk_denuncia_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id),
	CONSTRAINT ck_denuncia_exclusividade CHECK (
		(atividade IS NOT NULL AND comentario IS NULL AND utilizador IS NULL) OR
		(atividade IS NULL AND comentario IS NOT NULL AND utilizador IS NULL) OR
		(atividade IS NULL AND comentario IS NULL AND utilizador IS NOT NULL))
);


CREATE TABLE conversa (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	titulo					VARCHAR(100)		NOT NULL,
	descricao				VARCHAR(500)		NOT NULL,
	subtopico				INT					NOT NULL,
	CONSTRAINT pk_conversa PRIMARY KEY (id),
	CONSTRAINT fk_conversa_subtopico FOREIGN KEY (subtopico) REFERENCES subtopico (id)
);


CREATE TABLE participante (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	conversa				INT					NOT NULL,
	utilizador				INT					NOT NULL,
	perfil					INT					NOT NULL	DEFAULT (1),
	CONSTRAINT pk_participante PRIMARY KEY (id),
	CONSTRAINT fk_participante_conversa FOREIGN KEY (conversa) REFERENCES conversa (id),
	CONSTRAINT fk_participante_utilizador FOREIGN KEY (utilizador) REFERENCES utilizador (id),
	CONSTRAINT fk_participante_perfil FOREIGN KEY (perfil) REFERENCES perfil (id)
);


CREATE TABLE mensagem (
	id						SERIAL				NOT NULL,
	data_criacao			TIMESTAMP			NOT NULL	DEFAULT NOW(),
	mensagem				VARCHAR(100)		NOT NULL,
	participante			INT					NOT NULL,
	conversa				INT					NOT NULL,
	CONSTRAINT pk_mensagem PRIMARY KEY (id),
	CONSTRAINT fk_mensagem_participante FOREIGN KEY (participante) REFERENCES participante (id),
	CONSTRAINT fk_mensagem_conversa FOREIGN KEY (conversa) REFERENCES conversa (id)
);
INSERT INTO perfil (perfil) VALUES
    ('Administrador'),
    ('Utilizador');

INSERT INTO centro (centro) VALUES
    ('Centro Cultural de Viseu'),
    ('Centro Cultural de Tomar'),
    ('Centro Cultural de Fundão'),
    ('Centro Cultural de Portalegre'),
    ('Centro Cultural de Vila Real'),
    ('Centro Cultural de Coimbra');

INSERT INTO utilizador (tag, nome, sobrenome, email, senha, perfil, centro, imagem, linkedin) VALUES
	('lsebastiao', 'Lucas', 'Sebastião', 'lucasmsebastiao@gmail.com', 'senha1', 1, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718276850/utilizador/rl9w81ocmdkcfjryqgh8', 'www.linkedin.com/in/lmsebastiao'),
	('jsantos', 'João', 'Santos', 'joao12fcp@gmail.com', 'senha1', 2, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718276850/utilizador/d1r8uh9dpl73hlxwjmcn', null),
	('fmeneses', 'Francisco', 'Meneses', 'megazaine95@gmail.com', 'senha1', 1, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718276850/utilizador/kuho0cazsbeergrguzw6', null),
	('dvalpereiro', 'Daniel', 'Valpereiro', 'danielvalpereiro@gmail.com', 'senha1', 2, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718276850/utilizador/g8rxahufvulth2rsamel', null),
	('clatif', 'Cassamo', 'Latif', 'cassamolatif01@gmail.com', 'senha1', 1, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg', null),
	('mmarques', 'Miguel', 'Marques', 'miguelmarques@gmail.com', 'senha1', 2, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg', null);

INSERT INTO topico (topico) VALUES
    ('Saúde'),
    ('Desporto'),
    ('Formação'),
    ('Gastronomia'),
    ('Habitação'),
    ('Transporte'),
    ('Lazer');

INSERT INTO subtopico (area, topico) VALUES
    ('Outros...', 1),
    ('Ginásio', 2),
    ('Atividades ao ar livre', 2),
    ('Centros de Formação', 3),
    ('Escolas', 3),
    ('Infantários', 3),
    ('Restaurantes', 4),
    ('Shoppings', 4),
    ('Quartos para arrendar', 5),
    ('Cassas para alugar', 5),
    ('Cassas de férias', 5),
    ('Escapadinhas', 5),
    ('Boleias', 6),
    ('Transportes públicos', 6),
    ('Cinema', 7),
    ('Parques', 7);

INSERT INTO interesse (subtopico, utilizador) VALUES
    (4, 2),
    (4, 4),
    (2, 5),
    (3, 1),
    (1, 3);

INSERT INTO estado (estado) VALUES
    ('Em Análise'),
    ('Aprovado'),
    ('Rejeitado');

INSERT INTO album (descricao, imagem) VALUES
    ('Viagem a Paris', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg'),
    ('Férias de Verão', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg'),
    ('Eventos da Empresa', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg'),
    ('Conferências', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg'),
    ('Exposições de Arte', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg');

INSERT INTO tipo (tipo) VALUES
	('Evento'),
	('Atividade'),
	('Recomendação'),
	('Espaço');

INSERT INTO conteudo (titulo, descricao, imagem, endereco, utilizador, subtopico, album, tipo, data_evento, preco, classificacao) VALUES
    ('Introdução à IA', 'Workshop introdutório sobre Inteligência Artificial', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg', 'Rua Principal, 123', 2, 1, 4, 1, '05/23/2024', NULL, NULL),
    ('Exposição de Pintura', 'Exposição de obras de artistas locais', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg', 'Avenida Central, 456', 5, 2, 5, 2, '05/23/2024', NULL, NULL),
    ('Conferência de Tecnologia', 'Evento anual sobre as últimas tendências em tecnologia', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg', 'Centro de Convenções, Sala 1', 1, 1, 4, 3, NULL, 12, 5),
    ('Curso de Escrita Criativa', 'Aprenda a desenvolver habilidades de escrita criativa', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg', 'Escola Municipal, Sala 3', 3, 4, 5, 4, NULL, NULL, NULL),
    ('Visita Guiada ao Museu', 'Tour pelas exposições do museu local', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718362888/g7bfmd1q9dmeadiudwr7.jpg', 'Museu da Cidade, Sala de Entrada', 4, 2, 5, 1, '05/23/2024', NULL, NULL);

INSERT INTO participante (observacao, conteudo) VALUES
    ('Confirmado', 1),
    ('Pendente', 2),
    ('Confirmado', 1),
    ('Confirmado', 3),
    ('Pendente', 3);

INSERT INTO comentario (comentario, conteudo, utilizador) VALUES
    ('Ótimo evento, aprendi muito!', 1, 2),
    ('Adorei as obras expostas, especialmente a última!', 2, 5),
    ('Palestra muito interessante, mal posso esperar pelo próximo ano!', 3, 1),
    ('O curso foi muito útil para desenvolver minhas habilidades de escrita.', 4, 3),
    ('A visita guiada foi informativa e divertida, recomendo!', 5, 4);

INSERT INTO classificacao (classificacao, conteudo, comentario, utilizador) VALUES
    (5, 1, NULL, 2),
    (4, NULL, 2, 5),
    (5, 3, NULL, 1),
    (4, 4, NULL, 3),
    (5, 5, NULL, 4);

INSERT INTO revisao (motivo, estado, conteudo, comentario) VALUES
    ('Verificar se cumpre os padrões de qualidade.', 3, 1, NULL),
    ('Aprovar para publicação no site.', 1, 2, NULL),
    ('Analisar conteúdo e recomendar melhorias, se necessário.', 3, 4, NULL),
    ('Confirmar se respeita as diretrizes da plataforma.', 2, 5, NULL);

INSERT INTO notificacao (titulo, descricao, conteudo, comentario) VALUES
    ('Aprovação de Conteúdo', 'Seu evento foi aprovado e está agora visível para outros usuários.', NULL, NULL),
    ('Novo Comentário Recebido', 'Você recebeu um novo comentário em seu conteúdo.', NULL, 1),
    ('Revisão Pendente', 'Seu conteúdo está aguardando revisão antes de ser publicado.', 2, NULL),
    ('Atualização de Status', 'Seu comentário foi revisado e aprovado para publicação.', NULL, 2),
    ('Denúncia Recebida', 'Recebemos uma denúncia sobre um dos seus comentários.', NULL, 4);

INSERT INTO denuncia (motivo, comentario, utilizador) VALUES
    ('Conteúdo inadequado', 3, 5),
    ('Comentário ofensivo', 5, 4),
    ('Suspeita de plágio', 1, 2),
    ('Spam', 2, 1),
    ('Assédio', 4, 3);

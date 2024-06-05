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

INSERT INTO utilizador (tag, nome, sobrenome, email, senha, perfil, centro) VALUES
	('@lsebastiao', 'Lucas', 'Sebastião', 'lucasmsebastiao@gmail.com', 'senha1', 1, 1),
	('@jsantos', 'João', 'Santos', 'joao12fcp@gmail.com', 'senha1', 2, 1),
	('@fmeneses', 'Francisco', 'Meneses', 'megazaine95@gmail.com', 'senha1', 1, 1),
	('@dvalpereiro', 'Daniel', 'Valpereiro', 'danielvalpereiro@gmail.com', 'senha1', 2, 1),
	('@clatif', 'Cassamo', 'Latif', 'cassamolatif01@gmail.com', 'senha1', 1, 1),
	('@mmarques', 'Miguel', 'Marques', 'miguelmarques@gmail.com', 'senha1', 2, 1);

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
    (1, 2),
    (3, 4),
    (2, 5),
    (5, 1),
    (4, 3);

INSERT INTO estado (estado) VALUES
    ('Em Análise'),
    ('Aprovado'),
    ('Rejeitado');

INSERT INTO album (descricao, imagem) VALUES
    ('Viagem a Paris', 'paris.jpg'),
    ('Férias de Verão', 'beach.jpg'),
    ('Eventos da Empresa', 'company_events.jpg'),
    ('Conferências', 'conferences.jpg'),
    ('Exposições de Arte', 'art_exhibitions.jpg');

INSERT INTO tipo (tipo) VALUES
	('Evento'),
	('Atividade'),
	('Recomendação'),
	('Espaço');

INSERT INTO conteudo (titulo, descricao, imagem, endereco, utilizador, subtopico, album, tipo, data_evento, preco, classificacao) VALUES
    ('Introdução à IA', 'Workshop introdutório sobre Inteligência Artificial', 'ia_intro.jpg', 'Rua Principal, 123', 2, 1, 4, 1, '05/23/2024', NULL, NULL),
    ('Exposição de Pintura', 'Exposição de obras de artistas locais', 'art_exhibition.jpg', 'Avenida Central, 456', 5, 2, 5, 2, '05/23/2024', NULL, NULL),
    ('Conferência de Tecnologia', 'Evento anual sobre as últimas tendências em tecnologia', 'tech_conference.jpg', 'Centro de Convenções, Sala 1', 1, 1, 4, 3, NULL, 12, 5),
    ('Curso de Escrita Criativa', 'Aprenda a desenvolver habilidades de escrita criativa', 'creative_writing_course.jpg', 'Escola Municipal, Sala 3', 3, 4, 5, 4, NULL, NULL, NULL),
    ('Visita Guiada ao Museu', 'Tour pelas exposições do museu local', 'museum_tour.jpg', 'Museu da Cidade, Sala de Entrada', 4, 2, 5, 1, '05/23/2024', NULL, NULL);

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
    ('Aprovar para publicação no site.', 4, 2, NULL),
    ('Analisar conteúdo e recomendar melhorias, se necessário.', 3, 4, NULL),
    ('Confirmar se respeita as diretrizes da plataforma.', 5, 5, NULL);

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

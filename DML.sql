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
	('@jsantos', 'João', 'Santos', 'joaosantos@gmail.com', 'senha1', 2, 1),
	('@fmenses', 'Francisco', 'Meneses', 'franciscomeneses@gmail.com', 'senha1', 1, 1),
	('@dvalpereiro', 'Daniel', 'Valpereiro', 'danielvalpereiro@gmail.com', 'senha1', 2, 1),
	('@clatif', 'Cassamo', 'Latif', 'cassamolatif@gmail.com', 'senha1', 1, 1),
	('@mmarques', 'Miguel', 'Marques', 'miguelmarques@gmail.com', 'senha1', 2, 1);

INSERT INTO topico (topico) VALUES
    ('Tecnologia'),
    ('Cultura'),
    ('Educação'),
    ('Comércio'),
    ('Saúde');

INSERT INTO subtopico (area, topico) VALUES
    ('Inteligência Artificial', 1),
    ('Artes Visuais', 2),
    ('Ciências da Computação', 1),
    ('Literatura', 2),
    ('Ensino Fundamental', 3);

INSERT INTO interesse (subtopico, utilizador) VALUES
    (1, 2),
    (3, 4),
    (2, 5),
    (5, 1),
    (4, 3);

INSERT INTO estado (estado) VALUES
    ('Ativo'),
    ('Inativo'),
    ('Em Análise'),
    ('Aprovado'),
    ('Rejeitado');

INSERT INTO album (descricao, imagem) VALUES
    ('Viagem a Paris', 'paris.jpg'),
    ('Férias de Verão', 'beach.jpg'),
    ('Eventos da Empresa', 'company_events.jpg'),
    ('Conferências', 'conferences.jpg'),
    ('Exposições de Arte', 'art_exhibitions.jpg');

INSERT INTO espaco DEFAULT VALUES;
INSERT INTO espaco DEFAULT VALUES;
INSERT INTO espaco DEFAULT VALUES;
INSERT INTO espaco DEFAULT VALUES;
INSERT INTO espaco DEFAULT VALUES;

INSERT INTO atividade (data_evento) VALUES
    ('2024-06-15 10:00:00'),
    ('2024-07-20 14:30:00'),
    ('2024-08-10 09:00:00'),
    ('2024-09-05 11:00:00'),
    ('2024-10-12 16:00:00');

INSERT INTO recomendacao (classificacao, preco) VALUES
    (4, 20.50),
    (5, 35.00),
    (3, 15.75),
    (4, 28.99),
    (5, 42.00);

INSERT INTO evento (data_evento) VALUES
    ('2024-06-25 19:00:00'),
    ('2024-07-30 20:00:00'),
    ('2024-08-20 18:30:00'),
    ('2024-09-15 17:00:00'),
    ('2024-10-22 16:30:00');

INSERT INTO participante (observacao, evento, atividade) VALUES
    ('Confirmado', 1, NULL),
    ('Pendente', 2, NULL),
    ('Confirmado', NULL, 1),
    ('Confirmado', NULL, 3),
    ('Pendente', 3, NULL);

INSERT INTO conteudo (titulo, descricao, imagem, endereco, utilizador, subtopico, album, espaco, evento, atividade, recomendacao) VALUES
    ('Introdução à IA', 'Workshop introdutório sobre Inteligência Artificial', 'ia_intro.jpg', 'Rua Principal, 123', 2, 1, 4, NULL, NULL, 1, NULL),
    ('Exposição de Pintura', 'Exposição de obras de artistas locais', 'art_exhibition.jpg', 'Avenida Central, 456', 5, 2, 5, NULL, NULL, NULL, NULL),
    ('Conferência de Tecnologia', 'Evento anual sobre as últimas tendências em tecnologia', 'tech_conference.jpg', 'Centro de Convenções, Sala 1', 1, 1, 4, NULL, 1, NULL, 4),
    ('Curso de Escrita Criativa', 'Aprenda a desenvolver habilidades de escrita criativa', 'creative_writing_course.jpg', 'Escola Municipal, Sala 3', 3, 4, 5, NULL, NULL, 2, NULL),
    ('Visita Guiada ao Museu', 'Tour pelas exposições do museu local', 'museum_tour.jpg', 'Museu da Cidade, Sala de Entrada', 4, 2, 5, NULL, 4, NULL, 3);

INSERT INTO documento (documento, conteudo) VALUES
    ('ia_workshop_guide.pdf', 1),
    ('exhibition_catalog.pdf', 2),
    ('conference_schedule.pdf', 3),
    ('writing_course_materials.pdf', 4),
    ('museum_map.pdf', 5);

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

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
	('lsebastiao', 'Lucas', 'Sebastião', 'lucasmsebastiao@gmail.com', 'senha1', 1, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718276850/utilizador/rl9w81ocmdkcfjryqgh8', 'https://linkedin.com/in/lmsebastiao'),
	('jsantos', 'João', 'Santos', 'joao12fcp@gmail.com', 'senha1', 2, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718276850/utilizador/d1r8uh9dpl73hlxwjmcn', null),
	('fmeneses', 'Francisco', 'Meneses', 'megazaine95@gmail.com', 'senha1', 1, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718276850/utilizador/kuho0cazsbeergrguzw6', null),
	('dvalpereiro', 'Daniel', 'Valpereiro', 'danielvalpereiro@gmail.com', 'senha1', 2, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1718276850/utilizador/g8rxahufvulth2rsamel', null),
	('clatif', 'Cassamo', 'Latif', 'cassamolatif01@gmail.com', 'senha1', 1, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', null),
	('mmarques', 'Miguel', 'Marques', 'miguelmarques@gmail.com', 'senha1', 2, 1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', null);

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

/*INSERT INTO interesse (subtopico, utilizador) VALUES
    (4, 2),
    (4, 4),
    (2, 5),
    (3, 1),
    (1, 3);*/

INSERT INTO estado (estado) VALUES
    ('Em Análise'),
    ('Aprovado'),
    ('Rejeitado');

INSERT INTO tipo (tipo) VALUES
	('Evento'),
	('Atividade'),
	('Recomendação'),
	('Espaço');

INSERT INTO conteudo (titulo, descricao, imagem, endereco, utilizador, subtopico, tipo, data_evento, preco, classificacao) VALUES
    ('Introdução à IA', 'Workshop introdutório sobre Inteligência Artificial', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Rua Principal, 123', 2, 1, 1, '05/23/2024', NULL, NULL),
    ('Exposição de Pintura', 'Exposição de obras de artistas locais', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Avenida Central, 456', 5, 2, 2, '05/23/2024', NULL, NULL),
    ('Conferência de Tecnologia', 'Evento anual sobre as últimas tendências em tecnologia', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Centro de Convenções, Sala 1', 1, 1, 3, NULL, 12, 5),
    ('Curso de Escrita Criativa', 'Aprenda a desenvolver habilidades de escrita criativa', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Escola Municipal, Sala 3', 3, 4, 4, NULL, NULL, NULL),
    ('Visita Guiada ao Museu', 'Tour pelas exposições do museu local', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Museu da Cidade, Sala de Entrada', 4, 2, 1, '05/23/2024', NULL, NULL),
    ('Palestra sobre Sustentabilidade Urbana', 'Palestra abordando práticas sustentáveis em áreas urbanas', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Rua da Paz, 789', 3, 3, 3, '2024-06-30', NULL, NULL),
    ('Oficina de Culinária Vegana', 'Aprenda a preparar pratos deliciosos sem ingredientes de origem animal', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Espaço Gastronômico, Cozinha 2', 4, 4, 1, '2024-07-15', 50.00, NULL),
    ('Concerto de Música Clássica', 'Apresentação de obras clássicas por renomada orquestra local', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Teatro Municipal, Sala Principal', 1, 5, 2, '2024-08-05', 80.00, 3),
    ('Feira de Artesanato Regional', 'Exposição e venda de artesanato produzido por artistas da região', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Praça Central, Tendas 1-5', 2, 2, 2, '2024-07-20', NULL, NULL),
    ('Workshop de Fotografia Digital', 'Aprenda técnicas avançadas de fotografia digital com profissionais do setor', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Estúdio Fotográfico, Sala de Equipamentos', 5, 4, 1, '2024-08-10', 75.00, NULL),
    ('Conferência de Ciência e Tecnologia', 'Evento anual com palestras sobre avanços científicos e tecnológicos', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Centro de Convenções, Auditório Principal', 1, 1, 3, '2024-09-15', NULL, NULL),
    ('Curso de Marketing Digital', 'Aprenda estratégias e ferramentas essenciais para o marketing digital moderno', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Coworking Space, Sala de Treinamento', 2, 4, 4, '2024-08-25', 120.00, NULL),
    ('Exposição de Esculturas Abstratas', 'Exposição de esculturas contemporâneas que exploram formas abstratas', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Galeria de Arte Moderna, Sala 2', 5, 2, 2, '2024-07-30', NULL, NULL),
    ('Concerto de Jazz ao Ar Livre', 'Apresentação de bandas de jazz em ambiente ao ar livre', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Parque Municipal, Palco Principal', 4, 5, 2, '2024-08-05', NULL, NULL),
    ('Feira de Livros Usados', 'Venda de livros usados em bom estado a preços acessíveis', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Praça da Biblioteca, Estandes 1-10', 3, 3, 1, '2024-09-01', NULL, NULL),
    ('Workshop de Fotografia de Paisagem', 'Aprenda a capturar belas paisagens naturais com técnicas avançadas de fotografia', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Centro de Artes Visuais, Sala de Fotografia', 5, 4, 1, '2024-08-15', 80.00, NULL),
    ('Semana de Cinema Internacional', 'Exibição de filmes premiados de diferentes países seguida de debates com diretores convidados', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Cine Teatro Municipal, Sala Principal', 1, 5, 4, '2024-09-10', 15.00, NULL),
    ('Palestra de Economia Sustentável', 'Palestra sobre práticas econômicas que promovem a sustentabilidade ambiental e social', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Universidade Local, Auditório A', 2, 3, 3, '2024-08-30', NULL, NULL),
    ('Exposição de Arte Digital', 'Mostra de obras de arte criadas digitalmente por artistas contemporâneos', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Galeria de Arte Digital, Salão Principal', 5, 2, 2, '2024-07-25', NULL, NULL),
    ('Festival de Dança Urbana', 'Apresentação de coreografias de dança urbana por grupos locais e internacionais', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Praça da Juventude, Palco Central', 4, 5, 1, '2024-08-20', NULL, NULL),
    ('Curso de Desenvolvimento de Jogos', 'Aprenda a criar seus próprios jogos digitais com instrutores experientes do setor', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Escola de Programação, Laboratório de Jogos', 3, 4, 2, '2024-09-05', 150.00, NULL),
    ('Concerto de Música Eletrônica', 'Apresentação de DJs renomados tocando música eletrônica em um ambiente vibrante', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Clube Noturno, Pista Principal', 1, 5, 2, '2024-08-10', 30.00, NULL),
    ('Exposição de Pintura Moderna', 'Exposição de obras de artistas modernistas que exploram novas formas de expressão pictórica', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Centro Cultural, Sala 3', 2, 2, 2, '2024-07-15', NULL, NULL),
    ('Feira de Gastronomia Internacional', 'Degustação de pratos típicos de diferentes culturas preparados por chefs internacionais', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Mercado Gourmet, Stands 1-20', 4, 3, 1, '2024-09-20', NULL, NULL),
    ('Workshop de Design de Interiores', 'Aprenda a transformar espaços com técnicas de design de interiores com especialistas do ramo', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Centro de Design, Sala de Projetos', 5, 4, 1, '2024-08-25', 90.00, NULL),
    ('Conferência de Literatura Contemporânea', 'Evento literário com palestras e mesas-redondas sobre literatura contemporânea', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Biblioteca Municipal, Auditório', 3, 1, 3, '2024-09-10', NULL, NULL),
    ('Exposição de Esculturas Clássicas', 'Mostra de esculturas antigas e clássicas de artistas renomados da história da arte', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Museu de Belas Artes, Salão Principal', 2, 2, 2, '2024-07-30', NULL, NULL),
    ('Festival de Teatro de Rua', 'Apresentações teatrais ao ar livre por grupos de teatro locais e internacionais em vários pontos da cidade', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Ruas do Centro Histórico, Palcos Múltiplos', 4, 5, 1, '2024-08-15', NULL, NULL),
    ('Curso de Marketing de Influência', 'Aprenda a criar estratégias eficazes de marketing usando influenciadores digitais como parceiros de negócios', 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg', 'Espaço de Coworking, Sala de Eventos', 3, 4, 4, '2024-09-05', 100.00, NULL);

/*INSERT INTO album (conteudo, imagem) VALUES
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg'),
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg'),
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg'),
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg'),
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg'),
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg'),
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg'),
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg'),
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg'),
    (1, 'https://res.cloudinary.com/dqywsbdoi/image/upload/v1717319787/samples/man-on-a-street.jpg');*/

/*INSERT INTO participante (utilizador, conteudo) VALUES
    (1, 1),
    (1, 2),
    (1, 5),
    (1, 7),
    (1, 8);*/

INSERT INTO comentario (comentario, conteudo, utilizador) VALUES
    ('Ótimo evento, aprendi muito!', 1, 2),
	('Adorei as obras expostas, especialmente a última!', 1, 5),
    ('Palestra muito interessante, mal posso esperar pelo próximo ano!', 1, 1),
    ('O curso foi muito útil para desenvolver minhas habilidades de escrita.', 1, 3),
    ('A visita guiada foi informativa e divertida, recomendo!', 1, 4),
    ('Adorei as obras expostas, especialmente a última!', 2, 5),
    ('Palestra muito interessante, mal posso esperar pelo próximo ano!', 3, 1),
    ('O curso foi muito útil para desenvolver minhas habilidades de escrita.', 4, 3),
    ('A visita guiada foi informativa e divertida, recomendo!', 5, 4);

/*INSERT INTO classificacao (classificacao, conteudo, comentario, utilizador) VALUES
    (5, 1, NULL, 2),
    (4, NULL, 2, 5),
    (5, 3, NULL, 1),
    (4, 4, NULL, 3),
    (5, 5, NULL, 4);*/

INSERT INTO revisao (motivo, estado, conteudo, comentario) VALUES
    ('Verificar se cumpre os padrões de qualidade.', 2, 1, NULL),
    ('Aprovar para publicação no site.', 2, 2, NULL),
    ('Analisar conteúdo e recomendar melhorias, se necessário.', 2, 4, NULL),
    ('Confirmar se respeita as diretrizes da plataforma.', 2, 5, NULL),
	('Verificar se cumpre os padrões de qualidade.', 2, 3, NULL),
    ('Aprovar para publicação no site.', 2, 6, NULL),
    ('Analisar conteúdo e recomendar melhorias, se necessário.', 2, 7, NULL),
    ('Confirmar se respeita as diretrizes da plataforma.', 2, 8, NULL),
	('Verificar se cumpre os padrões de qualidade.', 2, NULL, 1),
    ('Aprovar para publicação no site.', 2, NULL, 2),
    ('Analisar conteúdo e recomendar melhorias, se necessário.', 2, NULL, 4),
    ('Confirmar se respeita as diretrizes da plataforma.', 2, NULL, 5),
	('Verificar se cumpre os padrões de qualidade.', 2, NULL, 6),
    ('Aprovar para publicação no site.', 2, NULL, 7),
    ('Analisar conteúdo e recomendar melhorias, se necessário.', 2, NULL, 8),
    ('Confirmar se respeita as diretrizes da plataforma.', 2, NULL, 9);

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

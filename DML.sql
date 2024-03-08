INSERT INTO perfil (perfil)VALUES
	('Utilizador'),
	('Administrador');


INSERT INTO utilizador (tag, nome, sobrenome, email, senha, perfil) VALUES
	('@lsebastiao', 'Lucas', 'Sebastião', 'lucas.sebastiao@outlook.pt', 'senha123', 2),
	('@jsantos', 'João', 'Santos', 'joao.santos@email.com', 'senha123', 2),
	('@dvalpereiro', 'Daniel', 'Valpereiro', 'daniel.valpereiro@email.com', 'senha123', 2),
	('@fmeneses', 'Francisco', 'Meneses', 'francisco.meneses@email.com', 'senha123', 2),
	('@clatif', 'Cassamo', 'Latif', 'cassamo.latif@email.com', 'senha123', 2),
	('@mmarques', 'Miguel', 'Marques', 'miguel.marques@email.com', 'senha123', 2);


INSERT INTO categoria (categoria) VALUES
	('Sáude'),	
	('Desporto'),	
	('Formação'),	
	('Gastronomia'),	
	('Habitação'),	
	('Mobilidade'),	
	('Lazer');


INSERT INTO topico (area, categoria) VALUES
	('Hospitais', 1),
	('Clinicas', 1),
	('Centro de Saude', 1),
	('Farmacias', 1),
	('Clinicas Veterinarias', 1),
	('Ginasio', 2),
	('Complexos Desportivos', 2),
	('Desporto em Equipa', 2),
	('Lojas de Desporto', 2),
	('Escolas', 3),
	('Universidades', 3),
	('Escolas Superiores', 3),
	('Creches', 3),
	('Escolas Primarias', 3),
	('Restaurante', 4),
	('Fast Food', 4),
	('Bares', 4),
	('Quartos', 5),
	('Casas', 5),
	('Hoteis', 5),
	('Alojamentos Locais', 5),
	('Transportes', 6),
	('Paragens', 6),
	('Pontos Turisticos', 7),
	('Bilhetes', 7),
	('Parques', 7);


INSERT INTO estado (estado) VALUES
	('Em espera'),
	('Aceite'),
	('Recusado');


INSERT INTO revisao (motivo, estado) VALUES
	('Revisão de conteúdo', 2),
	('Ajustes necessários', 3),
	('Conteúdo não adequado', 3),
	('Revisão padrão', 2),
	('Aprovação rápida', 2),
	('Revisão de conteúdo', 2),
	('Ajustes necessários', 3),
	('Conteúdo não adequado', 3),
	('Revisão padrão', 2),
	('Aprovação rápida', 2);


INSERT INTO atividade (titulo, descricao, endereco, preco, data_evento, imagem, topico, revisao, utilizador) VALUES
	('Workshop de React', 'Aprenda os conceitos fundamentais do React.', 'Rua da Tecnologia, 123', 20.00, '2024-03-15 18:00:00', '/path/imagem', 1, 1, 1),
	('(2) Workshop de React', 'Aprenda os conceitos fundamentais do React.', 'Rua da Tecnologia, 123', 20.00, '2024-03-15 18:00:00', '/path/imagem', 20, 2, 1),
	('Exposição de Arte Abstrata', 'Explore a beleza da arte abstrata com diversas obras.', 'Galeria de Arte Moderna, 456', 0.00, '2024-04-10 14:30:00', '/path/imagem', 2, 3, 2),
	('(2) Exposição de Arte Abstrata', 'Explore a beleza da arte abstrata com diversas obras.', 'Galeria de Arte Moderna, 456', 0.00, '2024-04-10 14:30:00', '/path/imagem', 19, 4, 2),
	('Partida de Futebol Amistosa', 'Junte-se a nós para uma partida descontraída.', 'Campo de Futebol Municipal', 5.00, '2024-03-20 16:00:00', '/path/imagem', 3, 5, 3),
	('(2) Partida de Futebol Amistosa', 'Junte-se a nós para uma partida descontraída.', 'Campo de Futebol Municipal', 5.00, '2024-03-20 16:00:00', '/path/imagem', 18, 6, 3),
	('Palestra sobre IA', 'Entenda as últimas tendências em inteligência artificial.', 'Centro de Conferências, 789', 15.00, '2024-03-25 19:30:00', '/path/imagem', 4, 7, 4),
	('(2) Palestra sobre IA', 'Entenda as últimas tendências em inteligência artificial.', 'Centro de Conferências, 789', 15.00, '2024-03-25 19:30:00', '/path/imagem', 17, 8, 4),
	('Workshop de Gestão Ágil', 'Aprenda práticas ágeis para gerenciar projetos eficientemente.', 'Sala de Treinamento, 101', 30.00, '2024-04-05 10:00:00', '/path/imagem', 5, 9, 5),
	('(2) Workshop de Gestão Ágil', 'Aprenda práticas ágeis para gerenciar projetos eficientemente.', 'Sala de Treinamento, 101', 30.00, '2024-04-05 10:00:00', '/path/imagem', 16, 10, 5);


INSERT INTO gosto (atividade, utilizador) VALUES
	(1, 2), (1, 3), (1, 4), (1, 5),
	(2, 1), (2, 3), (2, 4), (2, 5),
	(3, 1), (3, 2), (3, 4), (3, 5),
	(4, 1), (4, 2), (4, 3), (4, 5),
	(5, 1), (5, 2), (5, 3), (5, 4),
	(6, 1), (6, 2), (6, 3),
	(7, 1), (7, 4), (7, 5),
	(8, 2), (8, 3), (8, 4),
	(9, 1), (9, 3), (9, 5),
	(10, 2), (10, 4);


INSERT INTO comentario (comentario, atividade, utilizador) VALUES
	('Ótimo workshop! Recomendo a todos.', 1, 1),
	('Adorei as cores nas pinturas!', 2, 2),
	('Partida emocionante, estarei lá na próxima!', 3, 3),
	('Palestra esclarecedora, parabéns ao palestrante.', 4, 4),
	('Excelentes dicas de gestão ágil, obrigado!', 5, 5),
	('(2) Ótimo workshop! Recomendo a todos.', 6, 5),
	('(2) Adorei as cores nas pinturas!', 7, 4),
	('(2) Partida emocionante, estarei lá na próxima!', 8, 3),
	('(2) Palestra esclarecedora, parabéns ao palestrante.', 9, 2),
	('(2) Excelentes dicas de gestão ágil, obrigado!', 10, 1);


INSERT INTO classificacao (classificacao, atividade, utilizador) VALUES
	(9, 1, 1),
	(8, 2, 2),
	(7, 3, 3),
	(10, 4, 4),
	(6, 5, 5),
	(6, 6, 5),
	(6, 7, 4),
	(6, 8, 3),
	(6, 9, 2),
	(6, 10, 1);


INSERT INTO notificacao (visualizado, utilizador, titulo, descricao, atividade, comentario, revisao) VALUES
	(FALSE, 1, 'Nova Atividade', 'Workshop de React disponível.', 1, NULL, NULL),
	(FALSE, 2, 'Comentário Recebido', 'Seu comentário foi apreciado na exposição de arte.', NULL, 2, NULL),
	(FALSE, 3, 'Classificação Recebida', 'Sua palestra sobre IA recebeu uma classificação alta.', 4, NULL, NULL),
	(FALSE, 4, 'Próximo Jogo', 'A partida de futebol amistosa está marcada para domingo.', NULL, 1, NULL),
	(FALSE, 5, 'Feedback Recebido', 'Seu workshop de gestão ágil recebeu elogios.', 5, NULL, NULL);


INSERT INTO denuncia (titulo, motivo, atividade, utilizador) VALUES
	('Conteúdo Inadequado', 'Denúncia de atividade ofensiva.', 2, 5),
	('Comentário Inapropriado', 'Denúncia de comentário inadequado.', 1, 4);


INSERT INTO conversa (titulo, descricao, topico) VALUES
	('TrabalhosEscolinha', 'Os reis', 1),
	('EI', 'Curso de Engenharia Informática', 2),
	('ES @ ESTGV', 'Discord para as disciplinas de Engenharia de Software', 3),
	('Reis', 'Os reis versão barata', 4),
	('Ciganos', 'Os ciganos', 5);


INSERT INTO participante (conversa, utilizador, perfil) VALUES
	(1, 1, 2), (1, 2, 1), (1, 3, 1), (1, 4, 1), (1, 5, 1),
	(2, 1, 2), (2, 2, 1), (2, 3, 1), (2, 4, 1), (2, 5, 1),
	(3, 1, 2), (3, 2, 1), (3, 3, 1), (3, 4, 1), (3, 5, 1),
	(4, 1, 2), (4, 2, 1), (4, 3, 1), (4, 4, 1), (4, 5, 1),
	(5, 1, 2), (5, 2, 1), (5, 3, 1), (5, 4, 1), (5, 5, 1);


INSERT INTO mensagem (mensagem, participante, conversa) VALUES
	('ola', 1, 1), ('ola', 2, 1), ('ola', 3, 1), ('ola', 4, 1), ('ola', 5, 1),
	('ola', 6, 2), ('ola', 7, 2), ('ola', 8, 2), ('ola', 9, 2), ('ola', 10, 2),
	('ola', 11, 3), ('ola', 12, 3), ('ola', 13, 3), ('ola', 14, 3), ('ola', 15, 3),
	('ola', 16, 4), ('ola', 17, 4), ('ola', 18, 4), ('ola', 19, 4), ('ola', 20, 4),
	('ola', 21, 5), ('ola', 22, 5), ('ola', 23, 5), ('ola', 24, 5), ('ola', 25, 5);
INSERT INTO perfil (perfil)VALUES
	('Utilizador'),
	('Administrador');


INSERT INTO sede (sede)VALUES
	('Tomar'),
	('Viseu'),
	('Fundão'),
	('Portalegre'),
	('Vila Real');


INSERT INTO utilizador (tag, nome, sobrenome, email, senha, perfil, sede) VALUES
	('@lsebastiao', 'Lucas', 'Sebastião', 'lucas.sebastiao@outlook.pt', 'senha123', 2, 1),
	('@jsantos', 'João', 'Santos', 'joao.santos@email.com', 'senha123', 2, 2),
	('@dvalpereiro', 'Daniel', 'Valpereiro', 'daniel.valpereiro@email.com', 'senha123', 2, 3),
	('@fmeneses', 'Francisco', 'Meneses', 'francisco.meneses@email.com', 'senha123', 2, 4),
	('@clatif', 'Cassamo', 'Latif', 'cassamo.latif@email.com', 'senha123', 2, 5),
	('@mmarques', 'Miguel', 'Marques', 'miguel.marques@email.com', 'senha123', 2, 1);


INSERT INTO topico (topico) VALUES
	('Sáude'),	
	('Desporto'),	
	('Formação'),	
	('Gastronomia'),	
	('Habitação'),	
	('Mobilidade'),	
	('Lazer');


INSERT INTO subtopico (area, topico) VALUES
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


INSERT INTO formulario (descricao) VALUES
	('Form 1'),
	('Form 2'),
	('Form 3'),
	('Form 4'),
	('Form 5');


INSERT INTO campo (campo) VALUES
	('TextBox'),
	('CheckBox'),
	('Radio');

INSERT INTO registo (titulo, campo, formulario) VALUES
	('Titulo', 1, 1),
	('Titulo', 2, 2),
	('Titulo', 3, 3),
	('Titulo', 1, 3),
	('Titulo', 3, 4),
	('Titulo', 2, 4),
	('Titulo', 1, 5);


INSERT INTO resposta (valor, registo, utilizador) VALUES
	('Ola', 1, 1),
	('Ola', 1, 2),
	('Ola', 1, 3),
	('2', 2, 4),
	('true', 3, 5),
	('false', 3, 6),
	('true', 4, 1),
	('false', 5, 2),
	('true', 5, 3),
	('6', 6, 4),
	('Ola1', 7, 5),
	('Ola2', 7, 6);


INSERT INTO atividade (titulo, descricao, endereco, data_evento, imagem, formulario, subtopico, utilizador) VALUES
	('Workshop de React', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.', 'Rua da Tecnologia, 123', '2024-03-15 18:00:00', '/path/imagem', 1, 1, 1),
	('(2) Workshop de React', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.', 'Rua da Tecnologia, 123', '2024-03-15 18:00:00', '/path/imagem', 2, 20, 1),
	('Exposição de Arte Abstrata', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.', 'Galeria de Arte Moderna, 456', '2024-04-10 14:30:00', '/path/imagem', 3, 2, 2),
	('(2) Exposição de Arte Abstrata', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.', 'Galeria de Arte Moderna, 456', '2024-04-10 14:30:00', '/path/imagem', 4, 19, 2),
	('Partida de Futebol Amistosa', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.', 'Campo de Futebol Municipal', '2024-03-20 16:00:00', '/path/imagem', 5, 3, 3),
	('(2) Partida de Futebol Amistosa', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.', 'Campo de Futebol Municipal', '2024-03-20 16:00:00', '/path/imagem', 5, 18, 3),
	('Palestra sobre IA', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.', 'Centro de Conferências, 789', '2024-03-25 19:30:00', '/path/imagem', 4, 4, 4),
	('(2) Palestra sobre IA', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.', 'Centro de Conferências, 789', '2024-03-25 19:30:00', '/path/imagem', 3, 17, 4),
	('Workshop de Gestão Ágil', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like..', 'Sala de Treinamento, 101', '2024-04-05 10:00:00', '/path/imagem', 2, 5, 5),
	('(2) Workshop de Gestão Ágil', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like.', 'Sala de Treinamento, 101', '2024-04-05 10:00:00', '/path/imagem', 1, 16, 5);


INSERT INTO documento (documento, atividade) VALUES
	('Documento1', 1),
	('Documento2', 3),
	('Documento3', 5),
	('Documento4', 7),
	('Documento5', 9);


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


INSERT INTO subcomentario (subcomentario, comentario, utilizador) VALUES
	('[subcomentario] Ótimo workshop! Recomendo a todos.', 1, 1),
	('[subcomentario] Adorei as cores nas pinturas!', 2, 2),
	('[subcomentario] Partida emocionante, estarei lá na próxima!', 3, 3),
	('[subcomentario] Palestra esclarecedora, parabéns ao palestrante.', 4, 4),
	('[subcomentario] Excelentes dicas de gestão ágil, obrigado!', 5, 5),
	('[subcomentario] (2) Ótimo workshop! Recomendo a todos.', 6, 5),
	('[subcomentario] (2) Adorei as cores nas pinturas!', 7, 4),
	('[subcomentario] (2) Partida emocionante, estarei lá na próxima!', 8, 3),
	('[subcomentario] (2) Palestra esclarecedora, parabéns ao palestrante.', 9, 2),
	('[subcomentario] (2) Excelentes dicas de gestão ágil, obrigado!', 10, 1);


INSERT INTO revisao (motivo, estado, atividade, comentario) VALUES
	('Revisão de conteúdo', 2, 1, NULL),
	('Ajustes necessários', 3, NULL, 2),
	('Conteúdo não adequado', 3, 3, NULL),
	('Revisão padrão', 2, NULL, 4),
	('Aprovação rápida', 2, 5, NULL),
	('Revisão de conteúdo', 2, NULL, 6),
	('Ajustes necessários', 3, 7, NULL),
	('Conteúdo não adequado', 3, NULL, 8),
	('Revisão padrão', 2, 9, NULL),
	('Aprovação rápida', 2, NULL, 10),
	('Aprovação rápida', 2, 10, NULL);


INSERT INTO notificacao (titulo, descricao, visualizado, atividade, comentario) VALUES
	('Nova Atividade', 'Workshop de React disponível.', FALSE, 1, NULL),
	('Comentário Recebido', 'Seu comentário foi apreciado na exposição de arte.', FALSE, NULL, 2),
	('Classificação Recebida', 'Sua palestra sobre IA recebeu uma classificação alta.', FALSE, 4, NULL),
	('Próximo Jogo', 'A partida de futebol amistosa está marcada para domingo.', FALSE, NULL, 1),
	('Feedback Recebido', 'Seu workshop de gestão ágil recebeu elogios.', FALSE, 5, NULL);


INSERT INTO denuncia (motivo, atividade, comentario, utilizador) VALUES
	('Denúncia de comentário.', NULL, 1, NULL),
	('Denúncia de utilizador.', NULL, NULL, 5),
	('Denúncia de atividade.', 4, NULL, NULL);


INSERT INTO conversa (titulo, descricao, subtopico) VALUES
	('PDM', 'PDM', 1),
	('EI', 'Curso de Engenharia Informática', 2),
	('ES @ ESTGV', 'Discord para as disciplinas de Engenharia de Software', 3),
	('PINT', 'Projeto Integrado', 4),
	('EGE', 'EGE', 5);


INSERT INTO participante (conversa, utilizador, perfil) VALUES
	(1, 1, 2), (1, 2, 1), (1, 3, 1), (1, 4, 1), (1, 5, 1),
	(2, 1, 2), (2, 2, 1), (2, 3, 1), (2, 4, 1), (2, 5, 1),
	(3, 1, 2), (3, 2, 1), (3, 3, 1), (3, 4, 1), (3, 5, 1),
	(4, 1, 2), (4, 2, 1), (4, 3, 1), (4, 4, 1), (4, 5, 1),
	(5, 1, 2), (5, 2, 1), (5, 3, 1), (5, 4, 1), (5, 5, 1);


INSERT INTO mensagem (mensagem, participante, conversa) VALUES
	('ola', 1, 1), ('ola rei', 2, 1), ('joao fixe', 3, 1), ('concordo', 4, 1), ('ola', 5, 1),
	('ola', 6, 2), ('ola rei', 7, 2), ('joao fixe', 8, 2), ('concordo', 9, 2), ('ola', 10, 2),
	('ola', 11, 3), ('ola rei', 12, 3), ('joao fixe', 13, 3), ('concordo', 14, 3), ('ola', 15, 3),
	('ola', 16, 4), ('ola rei', 17, 4), ('joao fixe', 18, 4), ('concordo', 19, 4), ('ola', 20, 4),
	('ola', 21, 5), ('ola rei', 22, 5), ('joao fixe', 23, 5), ('concordo', 24, 5), ('ola', 25, 5);
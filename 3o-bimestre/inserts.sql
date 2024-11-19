
#tabela cadastro
insert into usuarioRegistro (username , email , senha , telefone , dat_de_nasc) values ('betohxz9', 'betohxz123@gmail.com', '526488bet', '(82) 99821.2691', '2006-04-26');
insert into usuarioRegistro (username , email , senha , telefone , dat_de_nasc) values ('thomas', 'thomas2024@gmail.com', 'thomas123', '(82) 90000.0000', '2009-04-22');
insert into usuarioRegistro (username , email , senha , telefone , dat_de_nasc) values ('emy', 'emiig20@gmail.com', 'emig00', '(82) 99410.01130', '2008-06-01');

#tabela equipe
INSERT INTO equipe( nome) VALUES('equipe1');
INSERT INTO equipe(nome) VALUES('equipe2');
INSERT INTO equipe(nome) VALUES('equipe3');

#tabela jogo

INSERT INTO jogo(nome, categoria, jogosDisponiveis, foto, descricao) VALUES('FREE FIRE', '1', 'FF', '', 'Já disponivel');
INSERT INTO jogo(nome, categoria, jogosDisponiveis, foto, descricao) VALUES('LEAGUE OF LEGENDS', '2', ' VV', 'ja disponivel');
INSERT INTO jogo(nome, categoria, jogosDisponiveis, foto, descricao) VALUES('VALORANT', '3', ' LOL', 'ja disponivel');

#tabela live_streams

INSERT INTO live_streams (foto, nome, descrição)VALUES ('', 'Ao vivo free fire', '250mil participantes');
INSERT INTO live_streams (foto, nome, descrição)VALUES ('','Ao vivo LOL', '200mil participantes');
INSERT INTO live_streams (foto, nome, descrição)VALUES ('', 'Ao vivo valorante', '100mil participantes');


#tabela prêmio
INSERT INTO premio(codigo, descricao, tipo) VALUES('444B', 'PIX', '1');
INSERT INTO premio(codigo, descricao, tipo) VALUES('494B', 'MOEDA EM JOGO', '2');
INSERT INTO premio(codigo, descricao, tipo) VALUES('444AB', 'Credito', '1');

#tabela competicao
INSERT INTO competicao(premiacao, codigo, dataI, dataF, local) VALUES('2', '505', 2023, 2024, 'ENDEREÇO TAL3');
INSERT INTO competicao(premiacao, codigo, dataI, dataF, local) VALUES('6', '565', 2023, 2024, 'ENDEREÇO TAL1');
INSERT INTO competicao(premiacao, codigo, dataI, dataF, local) VALUES('2', '557', 2025, 2026, 'ENDEREÇO TAL2');

#tabela jogador
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('EMILLY', 'INICIANTE', 3, '66N', 'maceió');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('CLAUDIO', 'SUPREMO', 100, '06M', 'rio largo');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('DAVID', 'AVANÇADO', 60, '677', 'arapiraca');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('Adriely', 'intermediário', 50, '678', 'arapiraca');

#tabela PremioJogoEquipeCompeticao
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES ('444B', 2222, '5555', '505');
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES ('494B', 2262, '5556', '565');
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES ('444AB', 2252, '5522', '557');

INSERT INTO competicaoEquipeJogo(TAXADEINSCRICAO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(50, 2222, '5555', '505');
INSERT INTO competicaoEquipeJogo(TAXADEINSCRICAO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(45, 2262, '5556', '565');
INSERT INTO competicaoEquipeJogo(TAXADEINSCRICAO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(35, 2252, '5522', '557');
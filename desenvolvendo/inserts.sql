
#tabela cadastro
insert into usuarioRegistro (id, username , email , senha , telefone , dat_de_nasc) values (222, 'betohxz9', 'betohxz123@gmail.com', '526488bet', '(82) 99821.2691', '2006-04-26');
insert into usuarioRegistro (id, username , email , senha , telefone , dat_de_nasc) values (333, 'thomas', 'thomas2024@gmail.com', 'thomas123', '(82) 90000.0000', '2009-04-22');
insert into usuarioRegistro (id, username , email , senha , telefone , dat_de_nasc) values (444, 'emy', 'emiig20@gmail.com', 'emig00', '(82) 99410.01130', '2008-06-01');

#tabela equipe
INSERT INTO equipe(idDaEquipe, nome) VALUES(555, 'equipe1');
INSERT INTO equipe(idDaEquipe, nome) VALUES(999, 'equipe2');
INSERT INTO equipe(idDaEquipe, nome) VALUES(222, 'equipe3');

#tabela jogo
INSERT INTO jogo(nome, codigo, categoria, jogosDisponiveis, foto, descricao) VALUES('FREE FIRE', 254, '1', 'FF', 'foto aqui', 'Já disponivel');
INSERT INTO jogo(nome, codigo, categoria, jogosDisponiveis, foto, descricao) VALUES('LEAGUE OF LEGENDS', 002, '2', 'VV','foto aqui', 'ja disponivel');
INSERT INTO jogo(nome, codigo, categoria, jogosDisponiveis, foto, descricao) VALUES('VALORANT', 236, '3', ' LOL', 'foto aqui', 'ja disponivel');

#tabela live_streams
INSERT INTO live_streams (id, fk_usuarioRegistro_id, fk_jogo_codigo, foto, nome, descrição)VALUES (589, 222, 254, '', 'Ao vivo free fire', '250mil participantes');
INSERT INTO live_streams (id, fk_usuarioRegistro_id, fk_jogo_codigo, foto, nome, descrição)VALUES (698, 333, 002, '','Ao vivo LOL', '200mil participantes');
INSERT INTO live_streams (id, fk_usuarioRegistro_id, fk_jogo_codigo, foto, nome, descrição)VALUES (445, 444, 236, '', 'Ao vivo valorante', '100mil participantes');

#chat live 
INSERT INTO chat_live (fk_live_stream_id, fk_usuarioRegistro_id, mensagem, foto, horario) VALUES (589, 222, 'será que a pain ganha hoje?', '', '2024-11-21 22:27:56'); 
INSERT INTO chat_live (fk_live_stream_id, fk_usuarioRegistro_id, mensagem, foto, horario) VALUES (698, 333, 'Go pain!!!','', '2024-11-21 22:29:56');  
INSERT INTO chat_live (fk_live_stream_id, fk_usuarioRegistro_id, mensagem, foto, horario) VALUES (445, 444, 'VRK ganha suave', '', '2024-11-21 22:25:56'); 

#chat
insert into chat(fk_usuarioRegistro_id, ultima_mensagem, quantidadedemensagens, foto, horario)values (222,'Não sei, será que a pain ganha hoje?', 1 ,'', '2024-11-21 07:10:40') ;
insert into chat(fk_usuarioRegistro_id, ultima_mensagem, quantidadeDeMensagens, foto, horario)values (333, 'vai ser tranquilo', 1, '', '2024-11-21 10:50:55') ;
insert into chat(fk_usuarioRegistro_id, ultima_mensagem, quantidadedemensagens, foto, horario)values (444, 'VRK ganha suave',  4,'', '2024-11-21 9:30:32') ;

#tabela prêmio
INSERT INTO premio(codigo, descricao, tipo) VALUES(254, 'PIX', '1');
INSERT INTO premio(codigo, descricao, tipo) VALUES(694, 'MOEDA EM JOGO', '2');
INSERT INTO premio(codigo, descricao, tipo) VALUES(024, 'Credito no app', '3');

#tabela competicao
INSERT INTO competicao(taxaDeinscricao, premiacao, codigo, dataI, dataF, local, descricao, fk_premio_codigo, fk_jogo_codigo, classificacao_indicativa) 
VALUES('30','credito no jogo', 650, '2023-12-01', '2023-12-02', 'ENDEREÇO TAL3','Jogo fps', 254, 254, '16');
INSERT INTO competicao(taxaDeinscricao, premiacao, codigo, dataI, dataF, local,descricao, fk_premio_codigo, fk_jogo_codigo, classificacao_indicativa) 
VALUES('30','pix', 697, '2023-11-26', '2023-11-27', 'ENDEREÇO TAL4', 'Jogo moba', 694, 002,'12');
INSERT INTO competicao(taxaDeinscricao, premiacao, codigo, dataI, dataF, local,descricao, fk_premio_codigo, fk_jogo_codigo, classificacao_indicativa)
VALUES('40' ,'credito na plata', 698, '2023-11-21', '2023-11-22', 'ENDEREÇO TAL5', 'jogo moba', 024, 236, '14');

#inscricao
insert into inscricao (fk_jogo_codigo, fk_competicao_codigo, quantidadeDeJogadores, categoria, fk_equipe_idDaEquipe, id) 
values(254,650, 50, 3, 555,698);
insert into inscricao (fk_jogo_codigo, fk_competicao_codigo, quantidadeDeJogadores, categoria, fk_equipe_idDaEquipe, id) 
values(002,697, 100, 2, 999, 6965);
insert into inscricao (fk_jogo_codigo, fk_competicao_codigo, quantidadeDeJogadores, categoria, fk_equipe_idDaEquipe, id) 
values(236,698,20, 10, 222,4587);

#criar_competição
insert into criarCompeticao(fk_jogo_codigo, nomeDaCompeticao, categoriaDosJogadores, codigoDaCompeticao, valorDoPremio, localDaCompeticao, data)
values(254, 'competição 1', 3, 567, 300, 'competição 100% online', '2024-11-20');
insert into criarCompeticao(fk_jogo_codigo, nomeDaCompeticao, categoriaDosJogadores, codigoDaCompeticao, valorDoPremio, localDaCompeticao, data)
values(002, 'competição 2', 5, 5617, 350, 'competição 100% online', '2024-11-22');
insert into criarCompeticao(fk_jogo_codigo, nomeDaCompeticao, categoriaDosJogadores, codigoDaCompeticao, valorDoPremio, localDaCompeticao, data)
values(236, 'competição 3', 6, 5657, 100, 'casa de eventos rua 3', '2024-11-25');

#escolherCompeticao
insert into escolherCompeticao(fk_jogo_codigo, foto, descricao) values(254, '', 'competição 5x5');
insert into escolherCompeticao(fk_jogo_codigo, foto, descricao) values(002, '', 'competição 1x1');
insert into escolherCompeticao(fk_jogo_codigo, foto, descricao) values(236, '', 'competição 4x4');

#pagamento
insert into pagamento(cartao, pix, fk_inscricao_id, id) values('Número do cartão, Data de nascimento, cod de segurança, Nome do titular do cartão','pague com pix',698, 100);
insert into pagamento(cartao, pix, fk_inscricao_id, id) values('Número do cartão, Data de nascimento, cod de segurança, Nome do titular do cartão','pague com pix',6965, 200);
insert into pagamento(cartao, pix, fk_inscricao_id, id) values('Número do cartão, Data de nascimento, cod de segurança, Nome do titular do cartão','pague com pix', 4587, 360);

#tabela jogador
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('EMILLY', 3, 3, 66, 'maceió');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('CLAUDIO', 1, 75, 55, 'rio largo');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('DAVID', 5, 60, 677, 'arapiraca');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('Adriely', 4, 50, 500, 'arapiraca');

#perfil
insert into perfil(fk_jogador_id, fk_usuarioRegistro_id, foto, id) values(66,222, '', 98753);
insert into perfil(fk_jogador_id, fk_usuarioRegistro_id, foto, id) values(55,333, '', 74841);
insert into perfil(fk_jogador_id, fk_usuarioRegistro_id, foto, id) values(677,444, '',5487);

#confinotificacao
INSERT INTO confi_notificacao (ativarNotificacao,receberNotificacaoDasCompeticao,receberNotificacaoDasEquipesVencedoras,receberNotificacaoDePremios) 
VALUES (TRUE,FALSE, TRUE,FALSE);

#suporte
insert into suporte(id, fk_usuarioRegistro_id, duvida, status_atendimento) values(5998,222, 'não consigo fazer(...)','em analise');
insert into suporte(id, fk_usuarioRegistro_id, duvida, status_atendimento) values(55598,333, 'não consigo fazer(...)','em analise');
insert into suporte(id, fk_usuarioRegistro_id, duvida, status_atendimento) values(898,444, 'não consigo fazer(...)','em analise');

#tabela PremioJogoEquipeCompeticao
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES (254, 254, 555, 650);
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES (694, 002, 999, 697);
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES (024, 236, 222, 698);

#competicaoEquipeJogos

INSERT INTO competicaoEquipeJogo(FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(254, 555, 650);
INSERT INTO competicaoEquipeJogo(FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(002, 999, 697);
INSERT INTO competicaoEquipeJogo(FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(236, 222, 698);
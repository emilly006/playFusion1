#selects

#tela de  cadastro
#Verificar se os dados ja existem
select * from usuarioRegistro where username = 'betohxz9' or email = 'betohxz123@gmail.com' or telefone = '(82) 99821.2691';

#tela de login
# validar as informações ao tenntar fazer login.
select id, username, email from usuarioRegistro where email = 'betohxz123@gmail.com'and senha ='526488bet';

#tela de esqueceu senha
#verificar se existe um usuario pelo email ou numero de telefone.alter
select id from usuarioRegistro where email ='betohxz123@gmail.com' or telefone = '(82) 99821.2691';

#tela inicial
# lista de tranmissões ao vivo
select l.nome as titulo, l.descrição, j. nome, l.foto from live_streams l join jogo j on l.fk_jogo_codigo = j.codigo;

#tela de trasnmissão
SELECT ls.nome AS nome_Da_live, u.username AS usuario, cl.mensagem AS mensagem, cl.horario 
FROM chat_live cl JOIN usuarioRegistro u ON cl.fk_usuarioRegistro_id = u.id JOIN live_streams ls ON cl.fk_live_stream_id = ls.id
WHERE ls.id = 589;

#buscar
select nome, categoria, descricao, foto from jogo where nome like 'free fire';

#tela de competição
select c.codigo, c.descricao, c.dataI, c.dataF, c.local, p.descricao as premio, j.nome as jogo, j.foto as foto from competicao c join premio p on c.fk_premio_codigo = p.codigo join jogo j on c.fk_jogo_codigo = j.codigo;

#tela de inscrição 
select c.codigo, c.descricao, c.dataI, c.dataF, c.local, p.descricao as premio, j.nome as jogo 
from competicao c join premio p on c.fk_premio_codigo = p.codigo join jogo j on c.fk_jogo_codigo = j.codigo where c.datai; #pesquisei como comparar datas e apareceu isso.;

#verificar e quipes
select e.nome as equipe, i.quantidadeDeJogadores from inscricao i join equipe e on i.fk_equipe_iddaequipe = e.idDaEquipe where i.fk_competicao_codigo = 650;

#tela de pagamento 
select p.cartao, p.pix, i.quantidadeDeJogadores, j.nome as jogo, c.local, c.dataI, dataF from pagamento p 
join inscricao i on p.fk_inscricao_id = i.id join jogo j on i.fk_jogo_codigo = j.codigo join competicao c on i.fk_competicao_codigo = c.codigo 
where p.fk_inscricao_id = 698;

#tela de perfil 
select u.username, u.email, u.telefone, j.nome as jogador, j.categoria from perfil p
 join usuarioRegistro u on p.fk_usuarioRegistro_id = u.id join jogador j on p.fk_jogador_id = j.id where p.fk_usuarioRegistro_id = 222;

#tela de suporte
select s.duvida, s.status_atendimento from suporte s where s.fk_usuarioRegistro_id = 222;

#tela de notificacao 

select * from confi_notificacao where id = 222;

#tela de mensagens
select c.id as chat_id, c.ultima_mensagem, c.quantidadeDeMensagens, c.foto as imagem_usuario, c.horario as ultima_interacao, username as nome_do_usuario
from chat c join usuarioregistro u on c.fk_usuarioRegistro_id = u.id where c.fk_usuarioRegistro_id = 444;

#tela de jogos 

select nome, categoria, descricao, foto, jogosDisponiveis from jogo;
select nome, categoria, descricao, foto, jogosDisponiveis from jogo where codigo = 002;

#tela de notificação
SELECT ativarNotificacao, receberNotificacaoDasCompeticao, receberNotificacaoDasEquipesVencedoras, receberNotificacaoDePremios 
FROM confi_notificacao WHERE id = 222;
SELECT c.descricao, c.dataI, c.dataF, c.local, p.descricao AS premio, j.nome AS jogo
FROM competicao c JOIN premio p ON c.fk_premio_codigo = p.codigo JOIN jogo j ON c.fk_jogo_codigo = j.codigo
WHERE c.dataI >= CURDATE() ORDER BY c.dataI ASC;

#configuração

select username, email, telefone, dat_de_nasc from usuarioRegistro where id = 222;

#editar conta

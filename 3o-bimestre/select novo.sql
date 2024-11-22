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
select l.nome, l.descrição, j.nome as jogo, l.foto from live_streams l join jogo j on l.fk_jogo_codigo = j.codigo where l.id = 589;

select ls.nome as nome_Da_live, u.username as usuuario, cl.mensagem as mensagem, cl.horario 
from chat_live cl join usuarioRegistro u on cl.fk_usuarioRegistroo_id = u.id join live_streams ls on cl.fk_live_streams_id = ls.id 
where ls.id = 589 order by cl.horario asc;

#buscar
select nome, categoria, descricao, foto from jogo where nome like 'free fire';

#tela de competição

select c.codigo, c.descricao, c.dataI, c.dataF, c.local, p.descricao as premio, j.nome as jogo from competicao c join premio p on c.fk_premio_codigo = p.codigo join jogo j on c.fk_jogo_codigo = j.codigo;

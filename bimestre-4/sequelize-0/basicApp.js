const sequelize = require('./db');


const UsuarioRegistro = require('../models/UsuarioRegistro');
const Equipe = require('../models/Equipe');
const Jogo = require('../models/Jogo');
const LiveStream = require('../models/LiveStream');
const ChatLive = require('../models/ChatLive');
const Chat = require('../models/Chat');
const Premio = require('../models/Premio');
const Competicao = require('../models/Competicao');
const Inscricao = require('../models/Inscricao');
const Pagamento = require('../models/Pagamento');
const Perfil = require('../models/Perfil');
const ConfiNotificacao = require('../models/ConfiNotificacao');
const Suporte = require('../models/Suporte');
const PremioJogoEquipeCompeticao = require('../models/PremioJogoEquipeCompeticao');
const CompeticaoEquipeJogo = require('../models/CompeticaoEquipeJogo');
const CriarCompeticao = require('../models/CriarCompeticao');
const EscolherCompeticao = require('../models/EscolherCompeticao');
const Jogador = require('../models/Jogador');
const setupRelationships = require('./models/relationships');

(async () => {
  try {

    setupRelationships();

  
    await sequelize.sync({ force: true }); 
    console.log('Banco de dados sincronizado.');

  } catch (error) {
    console.error('Erro ao sincronizar o banco de dados:', error);
  }
})();
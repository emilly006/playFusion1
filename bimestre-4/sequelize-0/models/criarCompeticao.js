
const { DataTypes } = require('sequelize');
const sequelize = require('../db');
const Jogo = require('../Jogo');

const CriarCompeticao = sequelize.define('CriarCompeticao', {
  codigoDaCompeticao: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  nomeDaCompeticao: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  categoriaDosJogadores: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  valorDoPremio: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  localDaCompeticao: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  data: {
    type: DataTypes.DATEONLY,
    allowNull: false,
  },
  fk_jogo_codigo: {
    type: DataTypes.INTEGER,
    references: {
      model: Jogo, 
      key: 'codigo', 
    },
  },
});

CriarCompeticao.belongsTo(Jogo, {
  foreignKey: 'fk_jogo_codigo',
  as: 'jogo', 
});

module.exports = CriarCompeticao;

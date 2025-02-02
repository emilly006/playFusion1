
const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Jogador = sequelize.define('Jogador', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  nome: {
    type: DataTypes.STRING(32),
    allowNull: false,
  },
  categoria: {
    type: DataTypes.INTEGER,
  },
  nivel: {
    type: DataTypes.INTEGER,
  },
  cidade: {
    type: DataTypes.STRING(100),
  },
});

module.exports = Jogador;

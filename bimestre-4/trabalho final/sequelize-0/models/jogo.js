const { DataTypes } = require("sequelize");
const sequelize = require("../config/database");

const Jogo = sequelize.define("Jogo", {
  codigo: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  nome: {
    type: DataTypes.STRING(30),
    allowNull: false,
  },
  categoria: {
    type: DataTypes.STRING(30),
    allowNull: false,
  },
  jogosDisponiveis: {
    type: DataTypes.STRING(30),
  },
  foto: {
    type: DataTypes.STRING(100),
  },
  descricao: {
    type: DataTypes.STRING(100),
  },
});

module.exports = Jogo;
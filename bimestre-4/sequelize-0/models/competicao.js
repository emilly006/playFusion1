const { DataTypes } = require("sequelize");
const sequelize = require("../config/database");

const Competicao = sequelize.define("Competicao", {
  codigo: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  taxaDeinscricao: {
    type: DataTypes.INTEGER,
  },
  premiacao: {
    type: DataTypes.STRING(30),
  },
  dataI: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  dataF: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  local: {
    type: DataTypes.STRING(50),
  },
  descricao: {
    type: DataTypes.STRING(100),
  },
  classificacao_indicativa: {
    type: DataTypes.STRING(50),
  },
});

module.exports = Competicao;

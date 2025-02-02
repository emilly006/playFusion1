const { DataTypes } = require("sequelize");
const sequelize = require("../config/database");

const Equipe = sequelize.define("Equipe", {
  idDaEquipe: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  nome: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
});

module.exports = Equipe;
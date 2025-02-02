const { DataTypes } = require("sequelize");
const sequelize = require("../config/database");

const LiveStream = sequelize.define("LiveStream", {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  foto: {
    type: DataTypes.STRING(100),
  },
  nome: {
    type: DataTypes.STRING(100),
  },
  descricao: {
    type: DataTypes.STRING(100),
  },
});

module.exports = LiveStream;
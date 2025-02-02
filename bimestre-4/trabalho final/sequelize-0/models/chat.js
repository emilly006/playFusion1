const Chat = sequelize.define("Chat", {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    ultima_mensagem: {
      type: DataTypes.STRING(100),
    },
    foto: {
      type: DataTypes.STRING(100),
    },
    quantidadeDeMensagens: {
      type: DataTypes.INTEGER,
    },
  });
  
  module.exports = Chat;
  
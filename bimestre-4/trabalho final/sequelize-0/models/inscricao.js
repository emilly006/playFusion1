const Inscricao = sequelize.define("Inscricao", {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    quantidadeDeJogadores: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    categoria: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  });
  
  module.exports = Inscricao;
  


const Pagamento = sequelize.define("Pagamento", {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    cartao: {
      type: DataTypes.STRING(100),
    },
    pix: {
      type: DataTypes.STRING(100),
    },
  });
  
  module.exports = Pagamento;
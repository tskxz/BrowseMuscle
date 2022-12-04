const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('Alimentos', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nome: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    proteina: {
      type: DataTypes.DOUBLE,
      allowNull: true
    },
    carbs: {
      type: DataTypes.DOUBLE,
      allowNull: true
    },
    gordura: {
      type: DataTypes.DOUBLE,
      allowNull: true
    },
    calorias: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    id_marca: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'Marcas',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'Alimentos',
    timestamps: true,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id" },
        ]
      },
      {
        name: "id_marca",
        using: "BTREE",
        fields: [
          { name: "id_marca" },
        ]
      },
    ]
  });
};

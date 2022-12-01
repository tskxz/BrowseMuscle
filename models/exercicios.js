const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('Exercicios', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nome: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    equipamento_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'Equipamentos',
        key: 'id'
      }
    },
    dificuldade_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'Dificuldades',
        key: 'id'
      }
    },
    musculo_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'Musculos',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'Exercicios',
    timestamps: false,
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
        name: "musculo_id",
        using: "BTREE",
        fields: [
          { name: "musculo_id" },
        ]
      },
      {
        name: "equipamento_id",
        using: "BTREE",
        fields: [
          { name: "equipamento_id" },
        ]
      },
      {
        name: "dificuldade_id",
        using: "BTREE",
        fields: [
          { name: "dificuldade_id" },
        ]
      },
    ]
  });
};

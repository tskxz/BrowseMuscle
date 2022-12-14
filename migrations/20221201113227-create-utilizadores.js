'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add altering commands here.
     *
     * Example:
     * await queryInterface.createTable('users', { id: Sequelize.INTEGER });
     */
    await queryInterface.createTable('Utilizadores', {
      id: {
        autoIncrement: true,
        type: Sequelize.INTEGER,
        allowNull: false,
        primaryKey: true
      },
      username: {
        type: Sequelize.STRING(25),
        allowNull: false,
        unique: "username"
      },
      primeiro_nome: {
        type: Sequelize.STRING(25),
        allowNull: false
      },
      ultimo_nome: {
        type: Sequelize.STRING(25),
        allowNull: false
      },
      email: {
        type: Sequelize.STRING(100),
        allowNull: false
      },
      num_telemovel: {
        type: Sequelize.STRING(25),
        allowNull: true
      },
      password: {
        type: Sequelize.STRING(100),
        allowNull: false
      },
      id_cargo: {
        type: Sequelize.INTEGER,
        allowNull: false,
        defaultValue: 1,
        foreignKey: true,
        references: {
          model: 'Cargos',
          key: 'id'
        }
      },
      descricao: {
        type: Sequelize.TEXT,
        allowNull: true
      },
      treinos_concluidos: {
        type: Sequelize.INTEGER,
        allowNull: false,
        defaultValue: 0
      },
      foto: {
        type: Sequelize.STRING(100),
        allowNull: true,
      },
      createdAt: {
        allowNull: false,
        type: 'TIMESTAMP',
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
      },
      updatedAt: {
        allowNull: false,
        type: 'TIMESTAMP',
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
      }
    })
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add reverting commands here.
     *
     * Example:
     * await queryInterface.dropTable('users');
     */
  }
};

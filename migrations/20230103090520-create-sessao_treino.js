'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    /**
     * Add altering commands here.
     *
     * Example:
     * await queryInterface.createTable('users', { id: Sequelize.INTEGER });
     */
    await queryInterface.createTable('Sessao_Treinos', {
      id: {
        autoIncrement: true,
        type: Sequelize.INTEGER,
        allowNull: false,
        primaryKey: true,
      },
      nome: {
        type: Sequelize.STRING(25),
        allowNull: false,
        unique: true,
      },
      utilizador_id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        foreignKey: true,
        references: {
          model: 'Utilizadores',
          key: 'id'
        }
      },
      exercicio_id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        foreignKey: true,
        references: {
          model: 'Exercicios',
          key: 'id'
        }
      },
      reps_objetivo: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      series: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      carga: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      reps_set1: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      reps_set2: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      reps_set3: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      reps_set4: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      reps_set5: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      concluido: {
        type: Sequelize.BOOLEAN,
        defaultValue: false,
      },

    })
  },

  async down(queryInterface, Sequelize) {
    /**
     * Add reverting commands here.
     *
     * Example:
     * await queryInterface.dropTable('users');
     */
  }
};

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
     await queryInterface.createTable('Musculos', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      nome: {
        type: Sequelize.STRING
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
    })/*.then(function(){
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Peito', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Ombro', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Tricep', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Costas', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Dorsal', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Trapezio', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Bicep', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Quadricep', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Hamstring', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Gemeo', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Antebraco', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Gluteo', now(), now())")
      queryInterface.sequelize.query("insert into Musculos (nome, createdAt, updatedAt) values ('Abdominais', now(), now())")
      

    })*/
    
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add reverting commands here.
     *
     * Example:
     * await queryInterface.dropTable('users');
     */
     await queryInterface.dropTable('Musculos');
  }
};

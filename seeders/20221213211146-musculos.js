'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
    */
   await queryInterface.bulkInsert('Musculos', [
    {
      nome: 'Peito',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Ombro',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Tricep',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Costas',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Dorsal',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Trapezio',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Bicep',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Quadricep',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Hamstring',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Gemeo',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Antebraco',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Gluteo',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Abdominais',
      createdAt: new Date(),
      updatedAt: new Date()
    },
   ])
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
  }
};

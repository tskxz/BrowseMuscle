var DataTypes = require("sequelize").DataTypes;
var _Alimentos = require("./Alimentos");
var _Cargos = require("./Cargos");
var _Dificuldades = require("./Dificuldades");
var _Equipamentos = require("./Equipamentos");
var _Exercicios = require("./Exercicios");
var _Marcas = require("./Marcas");
var _Musculos = require("./Musculos");
var _SequelizeMeta = require("./SequelizeMeta");
var _Treinos = require("./Treinos");
var _Utilizadores = require("./Utilizadores");

function initModels(sequelize) {
  var Alimentos = _Alimentos(sequelize, DataTypes);
  var Cargos = _Cargos(sequelize, DataTypes);
  var Dificuldades = _Dificuldades(sequelize, DataTypes);
  var Equipamentos = _Equipamentos(sequelize, DataTypes);
  var Exercicios = _Exercicios(sequelize, DataTypes);
  var Marcas = _Marcas(sequelize, DataTypes);
  var Musculos = _Musculos(sequelize, DataTypes);
  var SequelizeMeta = _SequelizeMeta(sequelize, DataTypes);
  var Treinos = _Treinos(sequelize, DataTypes);
  var Utilizadores = _Utilizadores(sequelize, DataTypes);

  Utilizadores.belongsTo(Cargos, { as: "id_cargo_Cargo", foreignKey: "id_cargo"});
  Cargos.hasMany(Utilizadores, { as: "Utilizadores", foreignKey: "id_cargo"});
  Exercicios.belongsTo(Dificuldades, { as: "dificuldade", foreignKey: "dificuldade_id"});
  Dificuldades.hasMany(Exercicios, { as: "Exercicios", foreignKey: "dificuldade_id"});
  Exercicios.belongsTo(Equipamentos, { as: "equipamento", foreignKey: "equipamento_id"});
  Equipamentos.hasMany(Exercicios, { as: "Exercicios", foreignKey: "equipamento_id"});
  Alimentos.belongsTo(Marcas, { as: "id_marca_Marca", foreignKey: "id_marca"});
  Marcas.hasMany(Alimentos, { as: "Alimentos", foreignKey: "id_marca"});
  Exercicios.belongsTo(Musculos, { as: "musculo", foreignKey: "musculo_id"});
  Musculos.hasMany(Exercicios, { as: "Exercicios", foreignKey: "musculo_id"});

  return {
    Alimentos,
    Cargos,
    Dificuldades,
    Equipamentos,
    Exercicios,
    Marcas,
    Musculos,
    SequelizeMeta,
    Treinos,
    Utilizadores,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;

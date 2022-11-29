var DataTypes = require("sequelize").DataTypes;
var _SequelizeMeta = require("./SequelizeMeta");
var _TipoExercicios = require("./TipoExercicios");
var _alimentos = require("./alimentos");
var _cargos = require("./cargos");
var _dificuldades = require("./dificuldades");
var _equipamentos = require("./equipamentos");
var _exercicios = require("./exercicios");
var _musculos = require("./musculos");
var _utilizadores = require("./utilizadores");

function initModels(sequelize) {
  var SequelizeMeta = _SequelizeMeta(sequelize, DataTypes);
  var TipoExercicios = _TipoExercicios(sequelize, DataTypes);
  var alimentos = _alimentos(sequelize, DataTypes);
  var cargos = _cargos(sequelize, DataTypes);
  var dificuldades = _dificuldades(sequelize, DataTypes);
  var equipamentos = _equipamentos(sequelize, DataTypes);
  var exercicios = _exercicios(sequelize, DataTypes);
  var musculos = _musculos(sequelize, DataTypes);
  var utilizadores = _utilizadores(sequelize, DataTypes);

  utilizadores.belongsTo(cargos, { as: "id_cargo_cargo", foreignKey: "id_cargo"});
  cargos.hasMany(utilizadores, { as: "utilizadores", foreignKey: "id_cargo"});
  exercicios.belongsTo(dificuldades, { as: "dificuldade", foreignKey: "dificuldade_id"});
  dificuldades.hasMany(exercicios, { as: "exercicios", foreignKey: "dificuldade_id"});
  exercicios.belongsTo(equipamentos, { as: "equipamento", foreignKey: "equipamento_id"});
  equipamentos.hasMany(exercicios, { as: "exercicios", foreignKey: "equipamento_id"});
  exercicios.belongsTo(musculos, { as: "musculo", foreignKey: "musculo_id"});
  musculos.hasMany(exercicios, { as: "exercicios", foreignKey: "musculo_id"});

  return {
    SequelizeMeta,
    TipoExercicios,
    alimentos,
    cargos,
    dificuldades,
    equipamentos,
    exercicios,
    musculos,
    utilizadores,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;

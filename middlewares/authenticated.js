// Função para verificar autenticação - Se estiver com sessão iniciada
function checkAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    return next();
  }

  res.redirect("/auth/login");
}

// Função para verificar autenticação - Se não estiver com sessão iniciada
function checkNotAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    return res.redirect("/meu_perfil");
  }
  next();
}

module.exports = {
  checkNotAuthenticated,
  checkAuthenticated,
};

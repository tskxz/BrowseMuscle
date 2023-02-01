// Importar o módulo 'passport-local' e o módulo 'passport'
const LocalStrategy = require('passport-local');
const passport = require('passport');

// Importar bcrypt para criptografia de palavras passes
const bcrypt = require('bcrypt');

// Função para inicializar o Passport
function initialize(passport, getUserByUsername, getUserById) {
    // Função para autenticar o utilizador
    const authenticateUser = async (username, password, done) => {
        // Obter o utilizador através do username do utilizador
        const user = await getUserByUsername(username);
        // Verificar se o utilizador foi encontrado
        if (!user) {
            // Se não encontrado, chamar 'done' com os parâmetros: erro nulo, utilizador falso e mensagem
            return done(null, false, { message: 'Utilizador não encontrado!' });
        }
        try {
            // Comparar a password fornecida com a password armazenada
            if (await bcrypt.compare(password, user.password)) {
                // Se as palavras passes combinam, chamar 'done' com os parâmetros: erro nulo e utilizador autenticado
                return done(null, user)
            } else {
                // Se as palavras passes não combinam, chamar 'done' com os parâmetros: erro nulo, utilizador falso e mensagem
                return done(null, false, { message: 'Palavra-passe incorreta!' })
            }
        } catch (error) {
            // Se ocorrer um erro, chamar 'done' com o erro
            return done(error);
        }
    }

    // Usar a estratégia local para autenticação
    passport.use(new LocalStrategy({ usernameField: 'username' }, authenticateUser))

    // Função para serializar o utilizador
    passport.serializeUser((user, done) => { done(null, user.id) })

    // Função para deserializar o utilizador
    passport.deserializeUser(async (id, done) => {
        // Obter o utilizador através do ID
        const user = await getUserById(id)
         // Retornar o utilizador deserializado
        return done(null, user)
    })
}

// Exportar a função 'initialize'
module.exports = initialize
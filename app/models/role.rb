class Role < ApplicationRecord

  enum status: {
    ATIVO: 'ATIVO',
    INATIVO: 'INATIVO'
  }

  enum descricao: {
    ADMIN: 'ADMIN',
    USUARIO_COMUM: 'USUARIO_COMUM',
    GESTOR_FINANCEIRO: 'GESTOR_FINANCEIRO',
    COLABORADOR: 'COLABORADOR',
    MODERADOR: 'MODERADOR',
    LEITOR: 'LEITOR',
    DESENVOLVEDOR: 'DESENVOLVEDOR',
    FINANCEIRO: 'FINANCEIRO'
}

def as_json(options = {})
super(options.merge(methods: [:status, :descricao]))
end
end

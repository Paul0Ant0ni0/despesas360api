class Categoria < ApplicationRecord
  has_many :despesas

  enum descricao: {
    Fixas: 0,
    Variáveis: 1
  }
end

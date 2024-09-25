class TipoDespesas < ApplicationRecord
  has_many :despesas
  
  enum descricao: {
    LUZ: 0,
    AGUA: 1,
    INTERNET: 2,
    TELEFONE: 3,
    ALUGUEL: 4,
    TRANSPORTE: 5,
    ALIMENTACAO: 6,
    SAUDE: 7,
    EDUCACAO: 8,
    ENTRETENIMENTO: 9,
    SEGUROS: 10,
    IMPOSTOS: 11,
    MANUTENCAO: 12,
    VESTUARIO: 13,
    SERVIÇOS: 14,
    FATURAS_CARTAO_CREDITO: 15,
    OUTRAS_DESPESAS: 16
  }

end

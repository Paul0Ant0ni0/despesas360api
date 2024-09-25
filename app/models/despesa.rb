class Despesa < ApplicationRecord
  belongs_to :user
  belongs_to :tipo_despesa
  belongs_to :categoria
  belongs_to :status_despesa

  validates :tipo_despesa, presence: true
end

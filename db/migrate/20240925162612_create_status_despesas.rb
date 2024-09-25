class CreateStatusDespesas < ActiveRecord::Migration[7.1]
  def change
    create_table :status_despesas do |t|
      t.string :descricao
      t.timestamps
    end
  end
end

class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.string :descricao
      t.string :status

      t.timestamps
    end
  end
end

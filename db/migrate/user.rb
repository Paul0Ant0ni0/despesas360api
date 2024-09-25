class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :cpf, limit: 11, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :nome
      t.string :password, limit: 6
      t.string :foto_url
      t.references :role, foreign_key: true
      t.timestamps
    end
  end
end

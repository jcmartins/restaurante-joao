class CreateRestaurantes < ActiveRecord::Migration
  def self.up
    create_table :restaurantes do |t|
      t.string :nome, :limit => 60
      t.string :endereco, :limit => 60
      t.integer :telefone, :limit => 15
      t.timestamps
    end
  end

  def self.down
    drop_table :restaurantes
  end
end

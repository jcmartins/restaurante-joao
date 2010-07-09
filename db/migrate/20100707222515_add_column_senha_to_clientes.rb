class AddColumnSenhaToClientes < ActiveRecord::Migration
  def self.up
     add_column :clientes, :senha, :string, :limit => 10
  end

  def self.down
     remove_column :clientes, :senha
  end
end

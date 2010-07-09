class AddColumnLinguaToClientes < ActiveRecord::Migration
  def self.up
    add_column :clientes, :lingua, :string
  end

  def self.down
    remove_column :clientes, :lingua
  end
end

class Restaurante < ActiveRecord::Base

 has_many :comentarios, :as => :comentavel
 has_many :qualificacoes
 has_and_belongs_to_many :pratos
 has_attached_file :foto, :styles => {:medium => "300x300>", :thumb => "100x100>"}
 
 validate :primeira_letra_Maiuscula
 
 private
 def primeira_letra_Maiuscula
   errors.add("nome", "primeira letra Maiuscula") unless nome=~/[A-Z].*/
 end

end

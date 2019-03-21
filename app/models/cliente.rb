class Cliente < ApplicationRecord
	validates :cpf, uniqueness: true
end
# comando que valida: campo, único: verdadeiro

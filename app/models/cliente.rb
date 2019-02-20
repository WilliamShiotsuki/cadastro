class Cliente < ApplicationRecord
	validates :cpf, uniqueness: true
end

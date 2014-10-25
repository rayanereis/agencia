class Pacote < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :reservar_passagem
  belongs_to :reserva_diaria
end

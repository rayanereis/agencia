class QualificacaoHotel < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :hotel
end

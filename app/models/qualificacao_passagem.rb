class QualificacaoPassagem < ActiveRecord::Base
  belongs_to :empresa_aerea
  belongs_to :usuario
end

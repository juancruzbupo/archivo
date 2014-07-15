class Office < ActiveRecord::Base
	has_many :steps , dependent: :destroy

	def start_office
		Office.find_or_create_by(name: 'Mesa de Entrada')
	end

	def archivate_office
  		Office.find_or_create_by(name: 'Archivo')
	end
end
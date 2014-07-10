class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office

  def start 
    Office.find_or_create_by(name: 'mesa de entrada')
    office = Office.find_by(name: 'mesa de entrada')
  	step = Step.new(office: office)
  	step.save
  end

    def start file_record
    Office.find_or_create_by(name: 'mesa de entrada')
    office = Office.find_by(name: 'mesa de entrada')
  	step = Step.new(office: office, file_record: file_record)
  	step.save
  end

  def archivate
  	if Oficce.exists?(name: 'Archivo')
  		office = Oficce.find_by(name: 'Archivo')
  		steps.create(office: office)
  	else 
  		office = Oficce.new(name: 'Archivo')
  		office.save
  		steps.create(office: office)
  	end
  end

end
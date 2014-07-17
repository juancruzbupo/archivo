class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office

  attr_accessor :office

  def start
    self.office = Office.start_office
    save
  end

  def archivate_step
    self.office.archivate_office
    save
  end

end
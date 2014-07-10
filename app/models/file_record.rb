class FileRecord < ActiveRecord::Base
	has_many :steps , dependent: :destroy
	
	after_save :start_step

	def start_step
		file_record = FileRecord.last
		steps = Step.new
		steps.start file_record
	end

end

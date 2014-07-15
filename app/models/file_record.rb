class FileRecord < ActiveRecord::Base
	has_many :steps , dependent: :destroy

	after_create :start_step

	def start_step
		steps.build.start
	end

	def archivate
		steps.build.archivate_step
	end

end

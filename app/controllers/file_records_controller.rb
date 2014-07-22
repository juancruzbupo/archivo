class FileRecordsController < InheritedResources::Base
  
  def show
    super
    @step = @file_record.steps.build
  end

  private
    def file_record_params
      params.require(:file_record).permit(:title)
    end
end

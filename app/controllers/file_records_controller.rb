class FileRecordsController < InheritedResources::Base
  
  def show
    super
    @step = @file_record.steps.build
  end
  
  protected
    def permitted_params
      params.permit(:file_record => [:title])
    end
end

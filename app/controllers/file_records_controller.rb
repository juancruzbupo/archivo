class FileRecordsController < InheritedResources::Base
 
  
  protected
    def permitted_params
      params.permit(:file_record => [:title])
    end
end

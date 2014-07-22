class StepsController < InheritedResources::Base
  protected
    def permitted_params
      params.permit(:step => [:file_record_id, :person_id, :office_id])
    end
end

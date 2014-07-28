class StepsController < InheritedResources::Base

 def create
 	binding.pry
 end
  protected
    def permitted_params
      params.permit(:step => [:file_record_id, :person_id, :office_id])
    end
end

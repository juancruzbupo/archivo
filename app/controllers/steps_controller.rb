class StepsController < InheritedResources::Base

  private
    def step_params
      params.require(:step).permit(:file_record_id, :person_id, :office_id)
    end
end

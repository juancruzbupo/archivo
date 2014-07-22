class OfficesController < InheritedResources::Base
  protected
    def permitted_params
      params.permit(:office => [:name])
    end
end

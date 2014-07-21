class FileRecordsController < InheritedResources::Base
  before_action :authenticate_user!

  # GET /file_records/1
  # GET /file_records/1.json
  def show
    @file_records = FileRecord.find(set_file_record)
    @step = @file_record.steps.build
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_record
      @file_record = FileRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_record_params
      params.require(:file_record).permit(:title)
    end
end

class LogsController < ApplicationController
  def create
    @log = Log.create(log_params)
    if @log.save
      redirect_to patient_path(params[:patient_id])
    end
  end

  private
  def log_params
    params.require(:log).permit(:text).merge(patient_id: params[:patient_id])
  end
end
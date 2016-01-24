class CallEntriesController < ApplicationController

	def new
		@job = Job.find(params[:job_id])
		@call_entry = @job.call_entries.new
    authorize @call_entry
	end

	def create
		@job = Job.find(params[:job_id])
		call = @job.call_entries.new(call_params)
    authorize call
		if call.save
			redirect_to job_path(@job)
		else
			redirect_to new_job_call_entry_path(@job)
		end
	end


  private
  def call_params
  	params.require(:call_entry).permit(:start, :finish, :call_type, :language, :comment)
  end
end 
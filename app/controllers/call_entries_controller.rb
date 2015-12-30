class CallEntriesController < ApplicationController

	def index
	end

	def new
		@job = Job.find(params[:job_id])
		@call_entry = @job.call_entries.new
	end

	def create
		@job = Job.find(params[:job_id])
		call = @job.call_entries.new(call_params)
		if call.save
			redirect_to job_path(@job)
		else
			redirect_to new_job_call_entry_path(@job)
		end
	end


  private
  def call_params
  	params.require(:call_entry).permit(:start, :finish, :call_type, :language)
  end
end
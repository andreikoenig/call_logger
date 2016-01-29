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

  def edit
    @call_entry = CallEntry.find(params[:id])
    @job = @call_entry.job
    authorize @call_entry
  end

  def update
    @call_entry = CallEntry.find(params[:id])
    @job = @call_entry.job
    authorize @call_entry
    if @call_entry.update(call_params)
      redirect_to job_path(@job)
    else
      redirect_to edit_job_call_entry_path(@job, @call_entry)
    end
  end

  def destroy
    call = CallEntry.find(params[:id])
    @job = call.job
    authorize call
    call.destroy
    redirect_to job_path(@job)
  end


  private
  def call_params
  	params.require(:call_entry).permit(:start, :finish, :call_type, :language, :comment)
  end
end 
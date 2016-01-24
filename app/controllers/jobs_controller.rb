class JobsController < ApplicationController
	before_action :authenticate_user!

	def index
		@jobs = current_user.jobs.all
		authorize @jobs
	end

	def new
		@user = current_user
		@job = Job.new
		authorize @job
	end

	def create
		job = Job.new(job_params)
		authorize job
		if job.save
			redirect_to jobs_path
		else
			render :new
		end
	end
	def show
		@job = Job.find(params[:id])
		@call = @job.call_entries.new
		tz = current_user.time_zone
		@current_time = ActiveSupport::TimeZone[tz].parse(Time.now.to_s)
		@todays_calls = @job.call_entries.where(start: (@current_time.beginning_of_day..@current_time.end_of_day))
		authorize @job
	end

	def edit
		@user = current_user
		@job = Job.find(params[:id])
		authorize @job
	end

	def update
		@job = Job.find(params[:id])
		authorize @job
		if @job.update(job_params)
			redirect_to job_path
		else
			redirect_to edit_job_path
		end
	end

	def destroy
		job = Job.find(params[:id])
		authorize job
		job.destroy
		redirect_to jobs_path
	end

	private
	def job_params
		params.require(:job).permit(:name, :pay_rate, :description, :user_id)
	end
end
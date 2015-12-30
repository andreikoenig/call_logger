class JobsController < ApplicationController
	before_action :authenticate_user!

	def index
		@jobs = Job.all
	end

	def new
		@job = Job.new
	end

	def create
		job = Job.new(job_params)
		if job.save
			redirect_to jobs_path
		else
			render :new
		end
	end
	def show
		@job = Job.find(params[:id])
	end

	private
	def job_params
		params.require(:job).permit(:name, :pay_rate, :description)
	end
end
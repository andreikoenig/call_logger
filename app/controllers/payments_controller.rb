class PaymentsController < ApplicationController
	def index
		@job = Job.find(params[:job_id])
		@payments = @job.payments.all
		authorize @payments
	end

	def new
		@job = Job.find(params[:job_id])
		@payment = Payment.new
		authorize @payment
	end

	def create
		@job = Job.find(params[:job_id])
		payment = @job.payments.new(payment_params)
		authorize payment
		if payment.save
			redirect_to job_payments_path(@job)
		else
			redirect_to new_job_payment_path(@job)
		end
	end


	private
	def payment_params
		params.require(:payment).permit(:received, :amount, :pay_period_start, :pay_period_end)
	end
end
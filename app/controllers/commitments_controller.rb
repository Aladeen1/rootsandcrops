class CommitmentsController < ApplicationController
	def create
		@commitment = Commitment.new(commitment_params)

		if @commitment.valid?
			@commitment.save!
			flash[:notice] = "Thank you for your interest, we will contact you soon wish fresh updates :)"
		else
			flash[:notice] = "The email adress entered was invalid please try again"
		end

		redirect_to request.referrer
	end

	private

  	def commitment_params
      	params.permit(:email)
  	end
end

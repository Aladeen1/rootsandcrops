class CommitmentsController < ApplicationController
	def create
		@commitment = Commitment.new(commitment_params)
		@commitment.save!

		redirect_to request.referrer
	end

	private

  	def commitment_params
      	params.permit(:email)
  	end
end

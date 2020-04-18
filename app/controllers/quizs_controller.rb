class QuizsController < ApplicationController
	def create
		@quiz = Quiz.new(quiz_params)

		if @quiz.valid?
			@quiz.save!
			flash[:notice] = "Thanks for answering our quiz"
		else
			flash[:notice] = "The information in the quiz were not valid"
		end

		redirect_to request.referrer
	end

	private

  	def quiz_params
      	params.permit(:size, :area, :sunlight, :type)
  	end
end

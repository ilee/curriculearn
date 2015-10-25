class CurriculumsController < ApplicationController

	before_filter :authenticate_user!, only: [:create, :destroy]
	def index
		respond_with Curriculum.all
	end

	def create

	    respond_with Curriculum.create(curriculum_params.merge(user_id: current_user.id))

	private
	def curr_params
		params.require(:curriculum).permit(:name, :grade_level)
	end
end

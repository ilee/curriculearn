class ChaptersController < ApplicationController

	before_filter :authenticate_user!, only: [:create, :destroy]
	def index
		respond_with Chapter.all

	end

	def create
    respond_with Chapter.create(chapter_params.merge(course_id: params[:course_id]))
  end

    def destroy
    	chapter = Chapter.find(params[:id2])
    	chapter.destroy
    	redirect_to "#/curriculums/#{params[:id]}"
  	end

	private
	def chapter_params
		params.require(:chapter).permit(:title, :description)
	end
end

class CoursesController < InheritedResources::Base
  before_action :authenticate_user!

  def edit
    @course = Course.find(params[:id])
    authorize! :update, @course
  end
  def new
    @course = Course.new
    authorize! :create, @course
  end

  private

    def course_params
      params.require(:course).permit(:title)
    end
end


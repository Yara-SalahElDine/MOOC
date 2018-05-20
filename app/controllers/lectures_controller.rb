class LecturesController < InheritedResources::Base
  before_action :authenticate_user!

  def edit
    @lecture = Lecture.find(params[:id])
    authorize! :update, @lecture
  end
  def new
    @lecture = Lecture.new
    authorize! :create, @lecture
  end
  def like
    @lecture = Lecture.find(params[:id])
    @lecture.liked_by current_user
    redirect_to lecture_url(@lecture)
  end
  def unlike
    @lecture = Lecture.find(params[:id])
    @lecture.unliked_by current_user
    redirect_to lecture_url(@lecture)
  end
  def spam
    @lecture = Lecture.find(params[:id])
    @lecture.disliked_by current_user
    redirect_to lecture_url(@lecture)
  end
  def unspam
    @lecture = Lecture.find(params[:id])
    @lecture.undisliked_by current_user
    redirect_to lecture_url(@lecture)
  end

  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachement, :course_id)
    end
end


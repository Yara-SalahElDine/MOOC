class CommentsController < InheritedResources::Base
  before_action :authenticate_user!

    def create 
        @lecture = Lecture.find(params[:lecture_id])
        @comment = @lecture.comments.build(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_to lecture_url(@lecture)
    end
    
    private
  
      def comment_params
        params.require(:comment).permit(:text, :lecture_id, :user_id)
      end
  end
  
  
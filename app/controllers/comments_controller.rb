class CommentsController < ApplicationController
  # before_action :require_sign_in
  # before_action :authorize_user, only: [:create, :destroy]

   def create
     @wiki = Wiki.find(params[:wiki_id])
     comment = @wiki.comments.new(comment_params)
     comment.user = current_user

     if comment.save
       flash[:notice] = "Comment saved successfully."
       redirect_to [@wiki]
     else
       flash[:alert] = "Comment failed to save."
       redirect_to [@wiki]
     end
   end

   def destroy
     @wiki = Wiki.find(params[:wiki_id])
     comment = @wiki.comments.find(params[:id])

     if comment.destroy
       flash[:notice] = "Comment was deleted."
       redirect_to [@wiki]
     else
       flash[:alert] = "Comment couldn't be deleted. Try again."
       redirect_to [@wiki]
     end
   end

   private

   def comment_params
     params.require(:comment).permit(:body)
   end

   def authorize_user
     comment = Comment.find(params[:id])
     unless current_user == comment.user || current_user.admin?
       flash[:alert] = "You do not have permission to delete a comment."
       redirect_to [comment.wiki]
     end
   end
end

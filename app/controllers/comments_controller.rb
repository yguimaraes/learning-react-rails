class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render :json => comments.to_json
  end

  def create
    comment = Comment.new
    comment.author = params[:author]
    comment.text = params[:text]
    comment.save!
    render :json => Comment.all.to_json
  end
end

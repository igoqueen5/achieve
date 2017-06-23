class CommentsController < ApplicationController

  def index
    @blogs = Blog.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @comment = current_user.comments.build(comment_params)
    @blog = @comment.blog

    respond_to do |format|
      if @comment.save
        format.html{redirect_to blog_path(@blog), notice: 'コメントを投稿しました。'}
        format.js{render :index}
      else
        format.html{render :new}
      end
    end

    respond_to do |format|
     if @comment.delete
      format.html{redirect_to blog_path(@blog), notice: 'コメントを削除しました。'}
      format.js{render :index}
    else
      format.html{render :new}
  end
end

  private
  def comment_params
    params.require(:comment).permit(:blog_id, :content)
  end
end

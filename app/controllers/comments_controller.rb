class CommentsController < ApplicationController
  before_action :find_article

	def create
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
	end

  def comment_params
    params.require(:comment).permit(:content)
  end

  private
    def find_article
      @article = Article.find(params[:article_id])
    end

end

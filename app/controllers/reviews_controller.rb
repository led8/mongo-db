class ReviewsController < ApplicationController
  before_action :find_post, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.post = @post

    if @review.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :content)
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end

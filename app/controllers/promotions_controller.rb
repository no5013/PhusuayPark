class PromotionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @promotion = Promotion.new(post_params)
    @promotion.save

    redirect_to @promotion
  end

  private
    def post_params
      params.require(:promotion).permit(:title, :body)
    end
end

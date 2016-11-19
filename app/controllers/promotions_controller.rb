class PromotionsController < ApplicationController
  def index
    @promotions = Promotion.all.order('created_at DESC')
  end

  def new
  end

  def create
    @promotion = Promotion.new(post_params)
    @promotion.save

    redirect_to @promotion
  end

  def show
    @promotion = Promotion.find(params[:id])
  end

  private
    def post_params
      params.require(:promotion).permit(:title, :body)
    end
end

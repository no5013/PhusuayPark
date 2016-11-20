class PromotionsController < ApplicationController
  def index
    @promotions = Promotion.all.order('created_at DESC')
  end

  def new
    @promotion = Promotion.new
  end

  def create
    @promotion = Promotion.new(post_params)
    @promotion.save

    redirect_to @promotion
  end

  def show
    @promotion = Promotion.find(params[:id])
  end

  def edit
    @promotion = Promotion.find(params[:id])
  end

  def update
    @promotion = Promotion.find(params[:id])
    if @promotion.update(params[:promotion].permit(:title, :body))
      redirect_to @promotion
    else
      render 'edit'
    end
  end

  def destroy
    @promotion = Promotion.find(params[:id])
    @promotion.destroy

    redirect_to promotions_path
  end
  
  private
    def post_params
      params.require(:promotion).permit(:title, :body)
    end
end

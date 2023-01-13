class CategoriesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_author

  def index
    @categories = Category.all.where(user_id: current_user.id)
  end

  def new
    @categorie = Category.new
  end

  def create
    categorie = Category.new(categorie_params)
    categorie.user = current_user
    if categorie.save
      redirect_to categories_path, notice: 'Category was successfully created.'
    else
      render :new, status: 422
    end
  end

  private

  def set_author
    @author = current_user
  end

  def categorie_params
    params.require(:categorie).permit(:name, :icon)
  end
end

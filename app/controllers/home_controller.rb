class HomeController < ApplicationController

  respond_to :html, :js

  def index
    if params[:association_id]
      @word = Word.find(params[:association_id])
      @associations = get_associations(@word) 
    else
      @word = Word.find(params[:id] || first_random_word)
      @associations = get_associations(@word) 
    end
  end

  def search
    unless params[:q].blank?
      @word = Word.find_or_create_by_name(params[:q].downcase)
      @word.user_word = true
      @word.save
      @associations = get_associations(@word) 
    else
      redirect_to root_path
    end
  end
  
  def about
  end
  
end

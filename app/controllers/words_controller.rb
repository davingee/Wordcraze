class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(params[:word])
    if @word.save
      redirect_to @word, :notice => "Successfully created word."
    else
      render :action => 'new'
    end
  end

  def edit
    @word = Word.find(params[:id])
  end

  def flag_or_r_rated
    @word = Word.find(params[:id])
    if params[:type] == "flagged"
      @type = "flagged"
      @word.flagged = @word.flagged + 1       
      @word.save
    elsif params[:type] == "r_rated"
      @type = "r_rated"
      @word.r_rated = @word.r_rated + 1 
      @word.save
    end
    @word = first_random_word
    @associations = get_associations(@word) 
  end
  
  def update
    @word = Word.find(params[:id])
    if @word.update_attributes(params[:word])
      redirect_to @word, :notice  => "Successfully updated word."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to words_url, :notice => "Successfully destroyed word."
  end
end

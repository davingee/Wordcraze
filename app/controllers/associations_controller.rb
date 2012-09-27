class AssociationsController < ApplicationController
  respond_to :html, :xml, :json, :js
  def index
    # @associations = Association.all
    @word = Word.find(params[:id])
    @associations = @word.associations
  end

  def show
    @association = Association.find(params[:id])
    respond_with(@association, :location => associations_url)
    
  end

  def new
    @association = Association.new
  end

  def create
    unless params[:association][:name].blank?    
      session[:associated] = "true"  
      @word = Word.find(params[:association][:word_id])
      @associated_word = Word.find_or_create_by_name(params[:association][:name])
      if @associated_word.save
        unless @word.id == @associated_word.id
          @associated_word.user_word = true
          @associated_word.save
          @association = Association.find_or_create_by_association_id_and_word_id(@associated_word.id, @word.id)
          @association.update_attributes(:count => @association.count + 1, :user_word => true)
          if current_user
            user_association = UserAssociation.find_or_create_by_user_id_and_word_id_and_association_id(:user_id => current_user.id, :word_id => @word.id, :association_id => @associated_word.id)
          else
            user_association = UserAssociation.find_or_create_by_word_id_and_association_id(:word_id => @word.id, :association_id => @associated_word.id)
          end
          unless session[:location].blank?
            user_association.city = session[:location][:city]
            user_association.region = session[:location][:region]
            user_association.country = session[:location][:country]
            user_association.latitude = session[:location][:latitude]
            user_association.longitude = session[:location][:longitude]
            user_association.save
          end
        end
        @associations = get_associations(@word) 
        respond_with(@word, :location => root_url)
      else
        @associations = get_associations(@word) 
        respond_with(@word, :location => root_url)
      end
    else
      @word = Word.find(params[:association][:word_id])
      @associations = get_associations(@word) 
      respond_with(@word, :location => root_url)
    end
  end

  def edit
    @association = Association.find(params[:id])
  end

  def update
    @association = Association.find(params[:id])
    if @association.update_attributes(params[:association])
      redirect_to @association, :notice  => "Successfully updated association."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @association = Association.find(params[:id])
    @association.destroy
    redirect_to associations_url, :notice => "Successfully destroyed association."
  end
end

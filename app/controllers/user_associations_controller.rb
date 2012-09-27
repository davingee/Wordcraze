class UserAssociationsController < ApplicationController
  def index
    @user_associations = UserAssociation.all
  end

  def show
    @user_association = UserAssociation.find(params[:id])
  end

  def new
    @user_association = UserAssociation.new
  end

  def create
    @user_association = UserAssociation.new(params[:user_association])
    if @user_association.save
      redirect_to @user_association, :notice => "Successfully created user association."
    else
      render :action => 'new'
    end
  end

  def edit
    @user_association = UserAssociation.find(params[:id])
  end

  def update
    @user_association = UserAssociation.find(params[:id])
    if @user_association.update_attributes(params[:user_association])
      redirect_to @user_association, :notice  => "Successfully updated user association."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user_association = UserAssociation.find(params[:id])
    @user_association.destroy
    redirect_to user_associations_url, :notice => "Successfully destroyed user association."
  end
end

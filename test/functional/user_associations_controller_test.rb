require 'test_helper'

class UserAssociationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => UserAssociation.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    UserAssociation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    UserAssociation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to user_association_url(assigns(:user_association))
  end

  def test_edit
    get :edit, :id => UserAssociation.first
    assert_template 'edit'
  end

  def test_update_invalid
    UserAssociation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UserAssociation.first
    assert_template 'edit'
  end

  def test_update_valid
    UserAssociation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UserAssociation.first
    assert_redirected_to user_association_url(assigns(:user_association))
  end

  def test_destroy
    user_association = UserAssociation.first
    delete :destroy, :id => user_association
    assert_redirected_to user_associations_url
    assert !UserAssociation.exists?(user_association.id)
  end
end

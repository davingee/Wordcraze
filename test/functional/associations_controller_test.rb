require 'test_helper'

class AssociationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Association.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Association.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Association.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to association_url(assigns(:association))
  end

  def test_edit
    get :edit, :id => Association.first
    assert_template 'edit'
  end

  def test_update_invalid
    Association.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Association.first
    assert_template 'edit'
  end

  def test_update_valid
    Association.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Association.first
    assert_redirected_to association_url(assigns(:association))
  end

  def test_destroy
    association = Association.first
    delete :destroy, :id => association
    assert_redirected_to associations_url
    assert !Association.exists?(association.id)
  end
end

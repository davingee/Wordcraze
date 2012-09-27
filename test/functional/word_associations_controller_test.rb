require 'test_helper'

class WordAssociationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => WordAssociation.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    WordAssociation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    WordAssociation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to word_association_url(assigns(:word_association))
  end

  def test_edit
    get :edit, :id => WordAssociation.first
    assert_template 'edit'
  end

  def test_update_invalid
    WordAssociation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => WordAssociation.first
    assert_template 'edit'
  end

  def test_update_valid
    WordAssociation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => WordAssociation.first
    assert_redirected_to word_association_url(assigns(:word_association))
  end

  def test_destroy
    word_association = WordAssociation.first
    delete :destroy, :id => word_association
    assert_redirected_to word_associations_url
    assert !WordAssociation.exists?(word_association.id)
  end
end

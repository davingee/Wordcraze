require 'test_helper'

class WordAssociationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert WordAssociation.new.valid?
  end
end

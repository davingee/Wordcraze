require 'test_helper'

class UserAssociationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UserAssociation.new.valid?
  end
end

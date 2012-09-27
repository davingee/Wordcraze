require 'test_helper'

class AssociationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Association.new.valid?
  end
end

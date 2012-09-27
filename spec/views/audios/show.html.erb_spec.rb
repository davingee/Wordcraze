require 'spec_helper'

describe "audios/show" do
  before(:each) do
    @audio = assign(:audio, stub_model(Audio,
      :name => "Name",
      :language => "Language",
      :word_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Language/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end

require 'spec_helper'

describe "audios/index" do
  before(:each) do
    assign(:audios, [
      stub_model(Audio,
        :name => "Name",
        :language => "Language",
        :word_id => 1,
        :user_id => 2
      ),
      stub_model(Audio,
        :name => "Name",
        :language => "Language",
        :word_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of audios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

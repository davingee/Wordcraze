require 'spec_helper'

describe "audios/edit" do
  before(:each) do
    @audio = assign(:audio, stub_model(Audio,
      :name => "MyString",
      :language => "MyString",
      :word_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit audio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => audios_path(@audio), :method => "post" do
      assert_select "input#audio_name", :name => "audio[name]"
      assert_select "input#audio_language", :name => "audio[language]"
      assert_select "input#audio_word_id", :name => "audio[word_id]"
      assert_select "input#audio_user_id", :name => "audio[user_id]"
    end
  end
end

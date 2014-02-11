require 'spec_helper'

describe "ducks/new" do
  before(:each) do
    assign(:duck, stub_model(Duck,
      :name => "MyString",
      :color => "MyString",
      :sound => "MyString",
      :backback => false
    ).as_new_record)
  end

  it "renders new duck form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ducks_path, "post" do
      assert_select "input#duck_name[name=?]", "duck[name]"
      assert_select "input#duck_color[name=?]", "duck[color]"
      assert_select "input#duck_sound[name=?]", "duck[sound]"
      assert_select "input#duck_backback[name=?]", "duck[backback]"
    end
  end
end

require 'rails_helper'

RSpec.describe "crudtutoriais/edit", type: :view do
  before(:each) do
    @crudtutoriai = assign(:crudtutoriai, Crudtutoriai.create!(
      :id_seq => "MyString",
      :namecourse => "MyString",
      :namechapter => "MyString",
      :contentchapter => "MyString",
      :duration => "MyString"
    ))
  end

  it "renders the edit crudtutoriai form" do
    render

    assert_select "form[action=?][method=?]", crudtutoriai_path(@crudtutoriai), "post" do

      assert_select "input[name=?]", "crudtutoriai[id_seq]"

      assert_select "input[name=?]", "crudtutoriai[namecourse]"

      assert_select "input[name=?]", "crudtutoriai[namechapter]"

      assert_select "input[name=?]", "crudtutoriai[contentchapter]"

      assert_select "input[name=?]", "crudtutoriai[duration]"
    end
  end
end

require 'rails_helper'

RSpec.describe "crudtutoriais/new", type: :view do
  before(:each) do
    assign(:crudtutoriai, Crudtutoriai.new(
      :id_seq => "MyString",
      :namecourse => "MyString",
      :namechapter => "MyString",
      :contentchapter => "MyString",
      :duration => "MyString"
    ))
  end

  it "renders new crudtutoriai form" do
    render

    assert_select "form[action=?][method=?]", crudtutoriais_path, "post" do

      assert_select "input[name=?]", "crudtutoriai[id_seq]"

      assert_select "input[name=?]", "crudtutoriai[namecourse]"

      assert_select "input[name=?]", "crudtutoriai[namechapter]"

      assert_select "input[name=?]", "crudtutoriai[contentchapter]"

      assert_select "input[name=?]", "crudtutoriai[duration]"
    end
  end
end

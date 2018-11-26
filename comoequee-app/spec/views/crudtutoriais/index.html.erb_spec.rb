require 'rails_helper'

RSpec.describe "crudtutoriais/index", type: :view do
  before(:each) do
    assign(:crudtutoriais, [
      Crudtutoriai.create!(
        :id_seq => "Id Seq",
        :namecourse => "Namecourse",
        :namechapter => "Namechapter",
        :contentchapter => "Contentchapter",
        :duration => "Duration"
      ),
      Crudtutoriai.create!(
        :id_seq => "Id Seq",
        :namecourse => "Namecourse",
        :namechapter => "Namechapter",
        :contentchapter => "Contentchapter",
        :duration => "Duration"
      )
    ])
  end

  it "renders a list of crudtutoriais" do
    render
    assert_select "tr>td", :text => "Id Seq".to_s, :count => 2
    assert_select "tr>td", :text => "Namecourse".to_s, :count => 2
    assert_select "tr>td", :text => "Namechapter".to_s, :count => 2
    assert_select "tr>td", :text => "Contentchapter".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
  end
end

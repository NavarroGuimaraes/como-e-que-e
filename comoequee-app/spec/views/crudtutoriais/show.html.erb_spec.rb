require 'rails_helper'

RSpec.describe "crudtutoriais/show", type: :view do
  before(:each) do
    @crudtutoriai = assign(:crudtutoriai, Crudtutoriai.create!(
      :id_seq => "Id Seq",
      :namecourse => "Namecourse",
      :namechapter => "Namechapter",
      :contentchapter => "Contentchapter",
      :duration => "Duration"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Id Seq/)
    expect(rendered).to match(/Namecourse/)
    expect(rendered).to match(/Namechapter/)
    expect(rendered).to match(/Contentchapter/)
    expect(rendered).to match(/Duration/)
  end
end

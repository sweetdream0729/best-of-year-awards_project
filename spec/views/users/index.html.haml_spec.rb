require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :company_name => "Company Name",
        :occupation_id => "Occupation"
      ),
      stub_model(User,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :company_name => "Company Name",
        :occupation_id => "Occupation"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
  end
end
require 'spec_helper'

describe "hosts/index" do
  before(:each) do
    assign(:hosts, [
      stub_model(Host,
        :name => "Name",
        :email => "Email",
        :phone => "Phone"
      ),
      stub_model(Host,
        :name => "Name",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of hosts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end

require 'spec_helper'

describe "hosts/show" do
  before(:each) do
    @host = assign(:host, stub_model(Host,
      :name => "Name",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end

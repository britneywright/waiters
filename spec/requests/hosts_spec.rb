require 'spec_helper'

describe "Hosts" do
  describe "GET /hosts" do
    it "works! (now write some real specs)" do
      get hosts_path
      expect(response.status).to be(200)
    end
  end
end

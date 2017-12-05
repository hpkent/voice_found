require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  test "client should not save without first name" do
    client = Client.new
    assert_not client.save, "Saved the client without a first name"
  end


end

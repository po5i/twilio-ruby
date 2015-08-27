require 'spec_helper'

describe Twilio::Resources::V2010::AccountList do
  before do
    @read_client = Twilio::REST::Client.new read_account_sid, read_auth_token
    @write_client = Twilio::REST::Client.new write_account_sid, write_auth_token
  
    it "can create accounts" do
      @write_client go create it
    end
  
    it "can fetch accounts" do
      @read_client go fetch it accounts
    end
  
    it "can read accounts" do
      @read_client go read it
    end
  end
end

describe Twilio::Resources::V2010::AccountInstance do
  before do
    @read_client = Twilio::REST::Client.new read_account_sid, read_auth_token
    @write_client = Twilio::REST::Client.new write_account_sid, write_auth_token
  
    it "can update accounts" do
      @write_client go update it
    end
  end
end

ENV['RACK_ENV'] = 'test'

require 'app'
require 'spec_helper'

describe "sinatra_bootstrap" do
  include Rack::Test::Methods

  def app
    SinatraBootstrapApp
  end

  before(:each) do
  end

  it "responds to slash" do
    get '/'
    expect(last_response).to be_ok
  end

  it "responds with 404 for non-existent pages" do
    get "/nothere"
    expect(last_response).to be_not_found
  end
end

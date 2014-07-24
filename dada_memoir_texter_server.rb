class DadaMemoirTexterServer < Sinatra::Base
  configure :development do
    require 'dotenv'
    Dotenv.load
  end

  get "/random-memoir-title" do
    raise params.inspect
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message(RandomMemoirGenerator.new("Harry Schwartz").random_memoir_title)
    end

    twiml.text
  end
end

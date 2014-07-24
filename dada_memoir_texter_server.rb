class DadaMemoirTexterServer < Sinatra::Base
  configure :development do
    require 'dotenv'
    Dotenv.load
  end

  get "/random-memoir-title" do
    name = params[:Body]

    twiml = Twilio::TwiML::Response.new do |r|
      r.Message(RandomMemoirGenerator.new(name).random_memoir_title)
    end

    twiml.text
  end
end

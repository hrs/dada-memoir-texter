class RandomMemoirGenerator
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def random_memoir_title
    tweet_generator = RandomTweetRetriever.new("libraryofemoji")
    tweet = tweet_generator.random_tweet
    "#{titlecase(tweet)}: The #{name} Story"
  end

  private

  def titlecase(title)
    title.split.map(&:capitalize).join(" ")
  end
end

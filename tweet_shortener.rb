require 'pry'

def dictionary
  substitutions = {
    'hello'=>'hi', 
    'to'=>'2',
    'two'=>'2',
    'too'=>'2',
    'for'=>'4',
    'four'=>'4',
    'be'=>'b',
    'you'=>'u',
    'at'=>'@',
    'and'=>'&'
  }
end

def word_substituter(tweet)
  split_tweet = tweet.split(' ')
  new_array = []
  split_tweet.each do |word|
    if dictionary.keys.include?(word)
      new_array << dictionary[word]
    else
      new_array << word
    end
  end
  new_array.join(' ')
end

def bulk_tweet_shortener(tweet)
  tweets.each do |tweet|
    split_tweet = tweet.split(' ')
    new_array = []
    split_tweet.each do |word|
      if dictionary.keys.include?(word.downcase)
        new_array << dictionary[word.downcase]
      else
        new_array << word
      end
    end
    puts new_array.join(' ')
  end
end

def selective_tweet_shortener(tweet)
  new_tweet = tweet[0..140]
  new_tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    tweet
  else
    new_tweet = tweet[0..136]
    final_tweet = new_tweet + "..."
    final_tweet
  end
end
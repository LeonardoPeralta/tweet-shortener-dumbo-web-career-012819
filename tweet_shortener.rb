require "pry"
# Write your code here.
def dictionary
   {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
     "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect {|word| dictionary.keys.include?(word.downcase) ? word = dictionary[word.downcase] :word } .join(" ")
end

# "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
# ["Hey", "guys,", "can", "anyone", ]

binding.pry


def bulk_tweet_shortener(tweets)
# tweets.collect {|tweet| puts tweet.split.collect {|word| dictionary.keys.include?(word.downcase) ? word = dictionary[word.downcase] :word } .join(" ")}
  tweets.collect {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  elsif tweet.length <= 140
    tweet
  end
end

def shortened_tweet_truncator(tweet)
truncated_tweet = ""
  if word_substituter(tweet).length > 140
     truncated_tweet << word_substituter(tweet)[0..136] + "..."
   else
     truncated_tweet << word_substituter(tweet)
  end
 truncated_tweet
end

# require modules here
require "pry"
require "yaml"

def load_library(library)
  emoticon_library = YAML.load_file('./lib/emoticons.yml')
  
  emo_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
 
jap_emoticons = []

emoticon_library.each do |meaning, emoticons|
  jap_emoticons << emoticons[1]
end

emo_hash[:get_emoticon][:jap_emoticons] = jap_emoticons
 binding.pry 
return emo_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
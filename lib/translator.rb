# require modules here
require "pry"
require "yaml"

def load_library(emoticon_library)
  emoticon_library = YAML.load_file('./lib/emoticons.yml')
  
  emo_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
 
emoticon_library.each do |meaning, emoticons|
  emo_hash[:get_meaning][emoticons[1]] = meaning
  emo_hash[:get_emoticon][emoticons[0]] = emoticons[1]
end

return emo_hash
end



def get_japanese_emoticon(emo_lib, emoticon)
emo_lib = load_library('./lib/emoticons.yml')

#jap_emoticon = emo_lib[get_emoticon]
binding.pry  

end

def get_english_meaning
  # code goes here
end
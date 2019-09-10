
def load_library(file_path)
  new_hash = {
   "get_meaning" => {},
   "get_emoticon" => {}
 }
 require 'yaml'
 library = YAML.load_file(file_path)
 library.each do |meaning, translation|
   english = translation[0]
   japanese = translation[1]
   new_hash["get_meaning"][japanese] = meaning
   new_hash["get_emoticon"][english] = japanese
 end
  return new_hash
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path) #call load_library
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
      
      
def get_english_emoticon(path, emoticon)
  library = load_library(path)
  result = library["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
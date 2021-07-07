require "yaml"

def load_library(file)
  jpart = {}
  epart = {}
  hash1 = {}
  hash2 = {}
  hash = {}
  emotes = YAML.load(File.open(File.join(File.dirname(__FILE__), 'emoticons.yml')))
  work = emotes.invert
  work.each do |a, b|
    jpart[a[1]] = b
    epart[a[0]] = a[1]
  end
  epart = epart.uniq
  jpart = jpart.uniq
  epart.each do |a, b|
    hash1[a] = b
  end
  jpart.each do |a, b|
     hash2[a] = b
  end
  hash = {:get_emoticon => hash1, :get_meaning => hash2}
  return hash
end

def get_japanese_emoticon(file_path, emoticon)
  hash = load_library(file_path)

  value = hash[:get_emoticon][emoticon]
  if value == nil
    return "Sorry, that emoticon was not found"
  else
    return value
  end


end

def get_english_meaning(file_path, emoticon)
  hash = load_library(file_path)

  value = hash[:get_meaning][emoticon]
  if value == nil
    return "Sorry, that emoticon was not found"
  else
    return value
  end
end

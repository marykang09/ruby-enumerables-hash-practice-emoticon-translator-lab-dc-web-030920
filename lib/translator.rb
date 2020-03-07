# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  hash = {"get_meaning" => {}, "get_emoticon" => {} }
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meaning, data|
    english, japanese = data
    hash["get_emoticon"][english] = japanese
    hash["get_meaning"][japanese] = meaning
  end
  hash
end


def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
hash = {
  "get_meaning" => {},
  "get_emoticon" => {}
      }  
emoticons = YAML.load_file(file_path)
emoticons.each do |meaning,data|
  english, japanese = data
  hash["get_emotion"][english] = japanese
  hash["get_meaning"][japanese] = meaning
end
hash
end

library = {"get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning




def get_japanese_emoticon
  # code goes here
end


def get_english_meaning
  # code goes here
end
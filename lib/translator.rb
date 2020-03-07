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
  "get_emoticon"[english] = japanese
  "get_meaning"[japanese] = meaning
end
hash
end
end




def get_japanese_emoticon
  # code goes here
end


def get_english_meaning
  # code goes here
end
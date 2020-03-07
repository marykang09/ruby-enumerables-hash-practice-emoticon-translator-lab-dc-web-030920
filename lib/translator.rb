# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
hahs = {
  "get_meaning" => {},
  "get_emoticon" => {}
      }  
emoticons = YAML.load_file(file_path)
emoticons.each do |meaning,data|
  english, japanese = data
  "get_meaning"[japanese] = japanese
  ""
  
end
end




def get_japanese_emoticon
  # code goes here
end


def get_english_meaning
  # code goes here
end
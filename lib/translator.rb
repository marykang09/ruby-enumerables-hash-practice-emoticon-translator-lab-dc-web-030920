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
  load_library(file_path).each do 
end
end


def get_english_meaning
  # code goes here
end
# require modules here

  def load_library(filepath)
  # code goes here
  
  emoji_data = YAML.load_file(filepath)
#  emoji_data.transform_keys!(&:to_sym)
  emoji_hash = {}
  emoji_data.each do |emotion_txt, emotion_sym|
    if emoji_hash[emotion_txt] == nil
      emoji_hash[emotion_txt] = {:english => emotion_sym[0], :japanese => emotion_sym[1]}
    end
  end
#  binding.pry
  emoji_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
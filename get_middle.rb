# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.


def get_middle(word)
  return 'Hey, give me something to throw back' if word.empty?
  split_chars(word)
end

def check_middle_char index, word_length
  index == word_length / 2
end

def split_chars(word)
  word_length = word.length
  new_word = []
  word.split('').each_with_index do |w, index|
    condition = word.length.odd? ? check_middle_char(index, word_length) : (check_middle_char(index, word_length) || index == word_length / 2 - 1)
    new_word << w if condition
  end
  new_word.join('')
end


p get_middle('A')
p get_middle('of')
p get_middle('middle')
p get_middle('test')
p get_middle('testing')
p get_middle('testingthestring')
p get_middle('testingthestrings')
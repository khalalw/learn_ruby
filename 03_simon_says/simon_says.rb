# write your code here
def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, repeat = 2)
  final_str = ''
  repeat.times do
    final_str += str + ' '
  end
  final_str.strip
end

def start_of_word(word, chars)
  word[0...chars]
end

def first_word(str)
  word_arr = str.split(' ')
  word_arr[0]
end

def titleize(str)
  capitalized_str = ''
  word_arr = str.split(' ')
  word_arr.each do |x|
    x.capitalize!
    capitalized_str += x + ' '
  end

  capitalized_str.strip
end

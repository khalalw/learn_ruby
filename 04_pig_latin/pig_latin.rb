# write your code here
def translate(str)
  pig_str = ''
  word_arr = str.split(' ')
  word_arr.map do |x|
    x = if /[aeiou]/.match(x[0])
          x + 'ay'
        else
          x[1...x.length] + x[0] + 'ay'
        end
    pig_str += x + ' '
  end
  pig_str.strip
end

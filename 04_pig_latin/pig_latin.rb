# write your code here
def translate(str)
  pig_str = ''
  word_arr = str.split(' ')
  word_arr.map do |x|
    if /[aeiou]/.match(x[0])
      x += 'ay'
    else
      match_length = /^[^aeiou]qu|^qu|^[^aeiou]+/.match(x).to_s.length
      x = x[match_length...x.length] + x[0...match_length] + 'ay'
    end
    pig_str += x + ' '
  end
  pig_str.strip
end

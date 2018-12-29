class Book
  attr_accessor :title

  def title
    title_arr = @title.split(' ')

    exceptions = %w[the a an and in of]
    always = ['i']

    title_arr.each do |word|
      word.capitalize! unless exceptions.include? word

      word.capitalize if always.include? word
    end

    title_arr[0].capitalize!
    @title = title_arr.join(' ')
  end
end

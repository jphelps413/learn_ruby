class Book
  attr_accessor :title
  @title = ''

  # Foisted from simon says with some noise added
  def title
    noise = %w(a an and by from in of or over the to)
    words = @title.downcase.split(' ')
    words.map! do |w|
      if noise.include? w
        w
      else
        w.capitalize
      end
    end
    words[0].capitalize!
    words.join(' ')
  end

end

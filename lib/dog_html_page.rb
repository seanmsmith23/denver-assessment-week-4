class DogHTMLPage

  def initialize(input)
    @dogs = input
    @number = @dogs.size
    # @dogs is an array of hashes
  end

  def title
    if not_empty?
      output = "<h1>There are #{@number} dogs</h1>"
    else
      output = "<h1>There are no dogs</h1>"
    end
  end

  def list
    values = []
    open = "<ul>"
    close = "</ul>"

    @dogs.each do |dog|
      values << dog.values
    end

    flattened = values.flatten

    li_list = flattened.map do |dog|
      "<li>" + dog + "</li>"
    end

    if not_empty?
      open + li_list.join(',').gsub(',','') + close
    else
      ""
    end

  end

  def not_empty?
    @number > 0
  end

end
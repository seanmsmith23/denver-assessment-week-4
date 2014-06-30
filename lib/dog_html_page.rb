class DogHTMLPage

  def initialize(input)
    @dogs = input
    # @dogs is an array of hashes
  end

  def title
    number = @dogs.size
    if number > 0
      output = "<h1>There are #{number} dogs</h1>"
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

    if @dogs.size > 0
      final = open + li_list.join(',').gsub(',','') + close
    else
      final = ""
    end

  end

end
class Dictionary



  def initialize
    @d = {}
  end

  def entries
    @d
  end

  def add(words)

    if words.class == Hash
      @d =  @d.merge(words)
    else
      @d = @d.merge(words => nil)
    end
  end

  def keywords
    x =  @d.keys
    x.sort_by! { |key| key }
    @d = x
  end

  def include?(string)
    @d.each do |x,y|
      if x == string
        return true
      end
    end
    return false
  end

  def find(entry)

      @d.select{|x| x.include? entry }


  end

end

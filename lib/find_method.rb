module FindMethod
  def find_method(query)
    methods.grep(Regexp.new(query))
  end
end

class Object
  [:include, :extend].each {|m| send(m, FindMethod)}
end
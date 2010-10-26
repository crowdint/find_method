module FindMethod
  def find_method(query)
    methods.grep(Regexp.new(query))
  end

  def self.included(receiver)
    receiver.extend         FindMethod
  end
end

class Object
  include FindMethod
end
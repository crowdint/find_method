module FindMethod
  module ClassMethods
    def find_method(query)
      methods.select {|m| Regexp.new(query).match(m)}
    end
  end

  module InstanceMethods
    def find_method(query)
      methods.select {|m| Regexp.new(query).match(m)}
    end
  end

  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end

class Object
  include FindMethod
end
require 'helper'

class RandomObject < Object
end

class TestFindMethod < Test::Unit::TestCase
  context "Class" do
    should "respond to find_method" do
      assert_respond_to(RandomObject, :find_method)
    end

    should "return the methods that look like the query" do
      assert_same_elements(RandomObject.find_method("module"), ["module_eval", "module_exec", "included_modules"])
    end
  end
  
  context "Instance" do
    def setup
      @random_object = RandomObject.new
    end
    
    should "respond to find_method" do
      assert_respond_to(@random_object, :find_method)
    end

    should "return the methods that look like the query" do
      assert_same_elements(@random_object.find_method("enum"), ["to_enum", "enum_for"])
    end
  end
end

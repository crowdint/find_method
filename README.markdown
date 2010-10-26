# find_method

Sometimes, you just remember part of a method name and you just don't want to go
through the whole list.

## Usage

    require 'find_method'

    AnyClass.find_method("module") # => ["module_eval", "module_exec", "included_modules"]

    any_object = AnyClass.new
    any_object.find_method("module") # => ["to_enum", "enum_for"]

### Rails

Just include it on your Gemfile

    gem 'find_method'
    
You're using Bundler, right?

### That's it!

That's it

# About the Author

[Crowd Interactive](http://www.crowdint.com) is an American web design and development company that happens to work in Colima, Mexico. 
We specialize in building and growing online retail stores. We don’t work with everyone – just companies we believe in. Call us today to see if there’s a fit.
Find more info [here](http://www.crowdint.com)!
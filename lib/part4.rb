# Demonstrate monkey-patching of the Class object to change base Ruby behavior
class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter

    # HINT See use of string literals https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals#The_%_Notation
    attr_reader attr_name + '_history' # create bar_history getter


    class_eval %Q{
         #YOUR CODE HERE, USE string litrals with % notation FOR MULTILINE STRINGS'
         # Was stuck on how to approach problem so used the link in the comments to get this problem solved
         # Link is https://maxivak.com/ruby-metaprogramming-and-own-attr_accessor/
         # Used the link to help write the code inside the defnition function involving the bar_history variable
         def #{attr_name}=(val)
           @#{attr_name}_history = [nil] if @#{attr_name}_history.nil?
           @#{attr_name}_history << val

           @#{attr_name} = val
         end
    }

  end
end

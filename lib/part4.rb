# Demonstrate monkey-patching of the Class object to change base Ruby behavior
class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    # TODO: YOUR CODE CHANGES HERE, the code below may need to be removed or modified

    # HINT See use of string literals https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals#The_%_Notation
    attr_reader attr_name + '_history' # create bar_history getter
    class_eval %(
         YOUR CODE HERE, USE string litrals with % notation FOR MULTILINE STRINGS
    ), __FILE__, __LINE__ -2

    # A silly example of monkey patching, REMOVE THIS FUNCTION!!
    class_eval %{
       def print_selt_is_cool()
          puts('SELT is cool')
       end
    }, __FILE__, __LINE__ - 4 # NOTE: -4 because function to report on begins 3 lines before current __LINE__
  end
end

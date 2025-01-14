class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
    	def #{attr_name}=(x) #takes an input to the method and calls it x
        
        #if the history is empty it creates a new array
        if @#{attr_name}_history == nil
          @#{attr_name}_history = Array.new
        end

        #concatenates attr_name onto the end of history 
        @#{attr_name}_history << @#{attr_name}

        #assigns the variable x to attr_name
        @#{attr_name} = x
      end
        }
  end
end

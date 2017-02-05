class Hash
  def keys_of(*arguments)
    #splat(*) captures whatever other arguments you pass into the method.
    #the splat is required for when you're passing multiple keys
    collect {|key,value| arguments.include?(value)? key:nil}.compact
      #collect enumerator pulls and passes array
        #the block compares whether the arguments(array) contains any matches to argument
          #the "?" is an if true statement.  If true it passes the key: value.
            #compact cleans up the collect array without any nils
  end
end

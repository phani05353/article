require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest
    

    def setup
      @category=Category.new(name:"sports")
      @category2=Category.new(name:"studies")  
    
    end
    
   
end
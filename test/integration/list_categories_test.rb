require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest
    

    def setup
      @category=Category.new(name:"sports")
      @category2=Category.new(name:"studies")  
    
    end
    
   test"should show" do
     get categories_path
     assert_template 'categories/index'
     assert_select "a[href=?]", category_path(@category) , text: @category.name
    assert_select "a[href=?]", category_path(@category2) , text: @category2.name
   end
end
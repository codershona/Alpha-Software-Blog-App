require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

  test "get new category form and create category"  do

  	get new_category_path
 
   post categories_path, params:{category:{name: "sports"}}

   follow_redirect!

   post_via_redirect categories_path, category: {name: "sports"}


end

end

 
  

  

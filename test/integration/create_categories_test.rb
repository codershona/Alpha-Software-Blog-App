require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

  test "get new category form and create category"  do

  	get new_category_path
 
   post categories_path, params:{category:{name: "sports"}}

   follow_redirect!

  


end


 test "invalid category submission results in failure"  do

  	get new_category_path
 
   post categories_path, params:{category:{name: " "}}

end




end





 
  

  

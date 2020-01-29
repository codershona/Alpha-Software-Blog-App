require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest



	def setup
     @user = User.create(username: "john", email: "john@example.com", password: "password", admin: true)


	end




  test "get new category form and create category"  do
  	sign_in_as(@user, "password")

  	get new_category_path
 
   post categories_path, params:{category:{name: "sports"}}

   follow_redirect!

  


end


 test "invalid category submission results in failure"  do
 	sign_in_as(@user, "password")

  	get new_category_path
 
   post categories_path, params:{category:{name: " "}}

end




end





 
  

  

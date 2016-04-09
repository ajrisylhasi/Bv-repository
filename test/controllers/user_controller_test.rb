require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should be valid" do 
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name=""
    assert_not @user.valid?   
  end
  test "email should be present" do 
    @user.email.empty?
    assert_not @user.valid?
  end
  
  test "name should not be too long" do
    @user.name="a"*51
    assert_not @user.valid?
  end
  
  test "email should not be too long " do
    @user.email="a"*244 + "@example.com"
    assert_not @user.valid?
  end
  
  
end

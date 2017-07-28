require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
=begin
  def setup do
    user = User.create(:email => "test2@test.test",
     :password => "666666", :password_confirmation => "666666")
    microposts =Micropost.create(:conte)
  end
=end


  test "relation profile and micropost " do
    assert_equal User.find(1), (Profile.find_by user_id: '1').user
    #assert_equal (Micropost.find_by user_id: '1').count, 1

  end

end

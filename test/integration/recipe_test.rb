require 'test_helper'

class RecipeFlowsTest < ActionDispatch::IntegrationTest
  include Devise::TestHelpers
  fixtures :recipes
  # test "create recipes" do
    # sing_in User.first
    # https!
    # curry = recipes(:curry)
    # get "/recipes/new"
    # post_via_redirect "/recipes/new", title: recipes(:curry).title
    # assert_equal '/recipes', path
    # assert_equal 'Create Recipe', flash[:notice]
    # https!(false)
    # get "/recipes"
    # assert_response :success
    # assert assigns(:recipes)
  # end
end


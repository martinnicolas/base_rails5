require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    # Para crear nuevo usuer
    @new_user = User.new
    @new_user.email = 'prueba2@prueba.com'
    @password = @new_user.send(:password_digest, 'sumbudrule')
    # Para editar usuario existente
    @user = users(:three)

    @current_user = users(:two)
  end

  test 'should get index' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @current_user

    get users_url
    assert_response :success
  end

  test 'should get new' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @current_user

    get new_user_url
    assert_response :success
  end

  test 'should create user' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @current_user

    assert_difference('User.count') do
      post users_url, params: {
        user: {
          email: @new_user.email,
          password: @password,
          password_confirmation: @password,
          role_ids: [1]
        }
      }
    end

    assert_redirected_to user_url(User.last)
  end

  test 'should show user' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @current_user

    get user_url(@user)
    assert_response :success
  end

  test 'should get edit' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @current_user

    get edit_user_url(@user)
    assert_response :success
  end

  test 'should update user' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @current_user

    patch user_url(@user), params: {
      id: @user.id,
      user: {
        email: @user.email,
        password: @password,
        password_confirmation: @password,
        role_ids: [1]
      }
    }
    assert_redirected_to user_url(@user)
  end

  test 'should destroy user' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @current_user

    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end

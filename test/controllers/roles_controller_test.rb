require 'test_helper'

class RolesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @role = roles(:one)
    @user = users(:two)
  end

  test 'should get index' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @user

    get roles_url
    assert_response :success
  end

  test 'should get new' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @user

    get new_role_url
    assert_response :success
  end

  test 'should create role' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @user

    assert_difference('Role.count') do
      post roles_url, params: { role: { descripcion: @role.descripcion } }
    end

    assert_redirected_to role_url(Role.last)
  end

  test 'should show role' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @user

    get role_url(@role)
    assert_response :success
  end

  test 'should get edit' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @user

    get edit_role_url(@role)
    assert_response :success
  end

  test 'should update role' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @user

    patch role_url(@role), params: { role: { descripcion: @role.descripcion } }
    assert_redirected_to role_url(@role)
  end

  test 'should destroy role' do
    # Use the sign_in helper to sign in a fixture `User` record.
    sign_in @user

    assert_difference('Role.count', -1) do
      delete role_url(@role)
    end

    assert_redirected_to roles_url
  end
end

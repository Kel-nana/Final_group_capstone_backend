require "test_helper"

class SpecializationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specialization = specializations(:one)
  end

  test "should get index" do
    get specializations_url, as: :json
    assert_response :success
  end

  test "should create specialization" do
    assert_difference("Specialization.count") do
      post specializations_url, params: { specialization: { doctor_id: @specialization.doctor_id, field_of_specialization: @specialization.field_of_specialization } }, as: :json
    end

    assert_response :created
  end

  test "should show specialization" do
    get specialization_url(@specialization), as: :json
    assert_response :success
  end

  test "should update specialization" do
    patch specialization_url(@specialization), params: { specialization: { doctor_id: @specialization.doctor_id, field_of_specialization: @specialization.field_of_specialization } }, as: :json
    assert_response :success
  end

  test "should destroy specialization" do
    assert_difference("Specialization.count", -1) do
      delete specialization_url(@specialization), as: :json
    end

    assert_response :no_content
  end
end

require "test_helper"

class MusicClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @music_class = music_classes(:one)
  end

  test "should get index" do
    get music_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_music_class_url
    assert_response :success
  end

  test "should create music_class" do
    assert_difference("MusicClass.count") do
      post music_classes_url, params: { music_class: { day: @music_class.day, description: @music_class.description, duration: @music_class.duration, instructor_id: @music_class.instructor_id, lesson_count: @music_class.lesson_count, level: @music_class.level, location_id: @music_class.location_id, music_class_series_id: @music_class.music_class_series_id, name: @music_class.name, price: @music_class.price, session_id: @music_class.session_id } }
    end

    assert_redirected_to music_class_url(MusicClass.last)
  end

  test "should show music_class" do
    get music_class_url(@music_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_music_class_url(@music_class)
    assert_response :success
  end

  test "should update music_class" do
    patch music_class_url(@music_class), params: { music_class: { day: @music_class.day, description: @music_class.description, duration: @music_class.duration, instructor_id: @music_class.instructor_id, lesson_count: @music_class.lesson_count, level: @music_class.level, location_id: @music_class.location_id, music_class_series_id: @music_class.music_class_series_id, name: @music_class.name, price: @music_class.price, session_id: @music_class.session_id } }
    assert_redirected_to music_class_url(@music_class)
  end

  test "should destroy music_class" do
    assert_difference("MusicClass.count", -1) do
      delete music_class_url(@music_class)
    end

    assert_redirected_to music_classes_url
  end
end

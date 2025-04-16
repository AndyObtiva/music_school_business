require "application_system_test_case"

class MusicClassesTest < ApplicationSystemTestCase
  setup do
    @music_class = music_classes(:one)
  end

  test "visiting the index" do
    visit music_classes_url
    assert_selector "h1", text: "Music classes"
  end

  test "should create music class" do
    visit music_classes_url
    click_on "New music class"

    fill_in "Day", with: @music_class.day
    fill_in "Description", with: @music_class.description
    fill_in "Duration", with: @music_class.duration
    fill_in "Instructor", with: @music_class.instructor_id
    fill_in "Lesson count", with: @music_class.lesson_count
    fill_in "Level", with: @music_class.level
    fill_in "Location", with: @music_class.location_id
    fill_in "Music class series", with: @music_class.music_class_series_id
    fill_in "Name", with: @music_class.name
    fill_in "Price", with: @music_class.price
    fill_in "Session", with: @music_class.session_id
    click_on "Create Music class"

    assert_text "Music class was successfully created"
    click_on "Back"
  end

  test "should update Music class" do
    visit music_class_url(@music_class)
    click_on "Edit this music class", match: :first

    fill_in "Day", with: @music_class.day
    fill_in "Description", with: @music_class.description
    fill_in "Duration", with: @music_class.duration
    fill_in "Instructor", with: @music_class.instructor_id
    fill_in "Lesson count", with: @music_class.lesson_count
    fill_in "Level", with: @music_class.level
    fill_in "Location", with: @music_class.location_id
    fill_in "Music class series", with: @music_class.music_class_series_id
    fill_in "Name", with: @music_class.name
    fill_in "Price", with: @music_class.price
    fill_in "Session", with: @music_class.session_id
    click_on "Update Music class"

    assert_text "Music class was successfully updated"
    click_on "Back"
  end

  test "should destroy Music class" do
    visit music_class_url(@music_class)
    click_on "Destroy this music class", match: :first

    assert_text "Music class was successfully destroyed"
  end
end

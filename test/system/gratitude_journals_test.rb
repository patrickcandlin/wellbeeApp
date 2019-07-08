require "application_system_test_case"

class GratitudeJournalsTest < ApplicationSystemTestCase
  setup do
    @gratitude_journal = gratitude_journals(:one)
  end

  test "visiting the index" do
    visit gratitude_journals_url
    assert_selector "h1", text: "Gratitude Journals"
  end

  test "creating a Gratitude journal" do
    visit gratitude_journals_url
    click_on "New Gratitude Journal"

    fill_in "Content", with: @gratitude_journal.content
    fill_in "Title", with: @gratitude_journal.title
    fill_in "User", with: @gratitude_journal.user_id
    click_on "Create Gratitude journal"

    assert_text "Gratitude journal was successfully created"
    click_on "Back"
  end

  test "updating a Gratitude journal" do
    visit gratitude_journals_url
    click_on "Edit", match: :first

    fill_in "Content", with: @gratitude_journal.content
    fill_in "Title", with: @gratitude_journal.title
    fill_in "User", with: @gratitude_journal.user_id
    click_on "Update Gratitude journal"

    assert_text "Gratitude journal was successfully updated"
    click_on "Back"
  end

  test "destroying a Gratitude journal" do
    visit gratitude_journals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gratitude journal was successfully destroyed"
  end
end

require 'test_helper'

class GratitudeJournalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gratitude_journal = gratitude_journals(:one)
  end

  test "should get index" do
    get gratitude_journals_url
    assert_response :success
  end

  test "should get new" do
    get new_gratitude_journal_url
    assert_response :success
  end

  test "should create gratitude_journal" do
    assert_difference('GratitudeJournal.count') do
      post gratitude_journals_url, params: { gratitude_journal: { content: @gratitude_journal.content, title: @gratitude_journal.title, user_id: @gratitude_journal.user_id } }
    end

    assert_redirected_to gratitude_journal_url(GratitudeJournal.last)
  end

  test "should show gratitude_journal" do
    get gratitude_journal_url(@gratitude_journal)
    assert_response :success
  end

  test "should get edit" do
    get edit_gratitude_journal_url(@gratitude_journal)
    assert_response :success
  end

  test "should update gratitude_journal" do
    patch gratitude_journal_url(@gratitude_journal), params: { gratitude_journal: { content: @gratitude_journal.content, title: @gratitude_journal.title, user_id: @gratitude_journal.user_id } }
    assert_redirected_to gratitude_journal_url(@gratitude_journal)
  end

  test "should destroy gratitude_journal" do
    assert_difference('GratitudeJournal.count', -1) do
      delete gratitude_journal_url(@gratitude_journal)
    end

    assert_redirected_to gratitude_journals_url
  end
end

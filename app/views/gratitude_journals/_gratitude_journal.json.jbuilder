json.extract! gratitude_journal, :id, :title, :content, :user_id, :created_at, :updated_at
json.url gratitude_journal_url(gratitude_journal, format: :json)

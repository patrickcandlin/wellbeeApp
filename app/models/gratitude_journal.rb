class GratitudeJournal < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true

    #7
    def self.longest_entry
      all.max_by {|journal| journal.content.split.length}
    end
    
    #8
    def self.array_of_total_words
      all.map {|journal| journal.content.split.count}
    end

    #9
    def self.total_words
      self.array_of_total_words.reduce(:+)
    end

    #10
    def self.average_post_length
      self.total_words.to_f / self.count
    end
    #11
    def self.count_of_each_word
      all.map {|journal| journal.content}.flatten.join(" ").split.each_with_object({}){|word, hash| 
        if hash.has_key?(word)
          hash[word] = hash[word] + 1
        else
          hash[word] = 1
        end
      }
    end
    #12
    def self.most_used_word
      self.count_of_each_word.max_by{|key, value| value}
    end

    

end

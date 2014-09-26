class Dictionary < ActiveRecord::Base
  attr_accessible :word_category, :word_chinese, :word_difficulty_id, :word_english, :word_id, :pronunciation
  validates :word_id, uniqueness: true
  has_many :understands
  has_many :difficulties
  has_many :users, through: :understands
end

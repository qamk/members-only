class Post < ApplicationRecord

  belongs_to :user
  
  validates :body_word_count, length: { within: 0..70, message: 'Must be less than 70 words long' }
  validates :title_word_count, length: { within: 1..20, message: 'Must be between 1 and 20 words long' }
  validates :body, presence: true # maybe redundant?

  protected

  def title_word_count
    title.scan(/\w+/)
  end

  def body_word_count
    body.scan(/\w+/)
  end


end

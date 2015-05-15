class Author < ActiveRecord::Base
  belongs_to :blog

  validates :blog, presence: true
  validates :name, presence: true
  validates :twitter_handle, uniqueness: true, format: { with: /\A@\w+\z/ }
  validates :github_profile, uniqueness: true, format: { with: /\A\w+\z/ }
  # validate :twitter_handle_exists
  # validate :github_profile_exists
  # Slowing down tests....

  def twitter_handle_exists
  	t = open("https://twitter.com/#{self.twitter_handle.gsub("@", "")}")
  	errors.add(:twitter_handle, "doesn't exist!") unless t.status.first == "200"
  end

  def github_profile_exists
  	g = open("https://github.com/#{self.github_profile}")
  	errors.add(:github_profile, "doesn't exist!") unless g.status.first == "200"
  end
end

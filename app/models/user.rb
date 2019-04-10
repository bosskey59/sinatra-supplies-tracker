class User < ActiveRecord::Base
  has_many :projects
  validates :name, presence: true
  validates :username, presence: true
  validates :password, presence: true#password or pw digest?
end

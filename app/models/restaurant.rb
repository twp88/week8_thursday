class Restaurant < ActiveRecord::Base
  validates :name, length: {minimum: 3}, uniqueness: true
  belongs_to :user
  has_many :reviews, dependent: :destroy
end

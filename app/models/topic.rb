class Topic < ActiveRecord::Base
  has_many :conversations
  has_many :replies, through: :conversations
end

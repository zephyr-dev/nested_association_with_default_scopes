class Conversation < ActiveRecord::Base
  belongs_to :topic
  has_many :replies, foreign_key: "parent_id"

  attr_accessible :topic

  def self.default_scope
    where(parent_id: nil)
  end
end

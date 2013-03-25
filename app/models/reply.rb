class Reply < Conversation
  belongs_to :parent, class_name: "Conversation"
  attr_accessible :parent

  def self.default_scope
    where(arel_table[:parent_id].not_eq(nil))
  end
end

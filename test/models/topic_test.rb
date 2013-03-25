require 'test_helper'

class TopciTest < ActiveSupport::TestCase
  test "it can find the replies to its conversations" do
    topic = Topic.create
    conversation = Conversation.create(topic: topic)
    reply = Reply.create(parent: conversation)

    assert_equal([reply], topic.replies)
  end
end

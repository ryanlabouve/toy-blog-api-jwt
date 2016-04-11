require 'test_helper'

class PublicPostTest < ActiveSupport::TestCase

  setup do
    @public_post = posts(:public_post)
  end

  test "valid public post is valid" do
    assert @public_post.valid?
  end

end

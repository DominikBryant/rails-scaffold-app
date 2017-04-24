require 'test_helper'

class PostFlowTest < Capybara::Rails::TestCase
  def setup
  end

  test 'user index' do
  end

  test 'create new user' do
    visit posts_path

    click_on 'New Post'

    fill_in 'Title', with: 'Neuer Post'

    click_on 'Create Post'

    assert_current_path post_path(Post.last)
    assert page.has_content?('Neuer Post')
  end
end

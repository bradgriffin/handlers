require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  test '.md template handler' do 
  	visit '/handlers/rdiscount'
  	expected = '<p>RDiscount is <em>cool</em> and <strong>fast</strong>!</p>'
  	assert_match expected, page.body
  end

  test '.string template handler' do
    visit '/handlers/show'
    expected = 'Congratulations! You just created another template handler!'
    assert_match expected, page.body
  end

  test '.rb template handler' do 
  	visit '/handlers/index'
  	expected = 'This is my first <b>template handler</b>!'
  	assert_match expected, page.body
  end
end

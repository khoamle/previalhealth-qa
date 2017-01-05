require 'rails_helper'

describe 'iPrevail page Samsung Galaxy s5 resolution size' do
  before do
    Capybara.current_session.driver.browser.manage.window.resize_to(360, 640)
    @iprevail_page = IprevailPage.new
    @iprevail_page.load
  end

  it "should take me to the GET STARTED page" do
    @iprevail_page.get_started_button.click
    @iprevail_page.wait_for_skip_continue_button
    expect(@iprevail_page.current_url).to include("/interactive_experiences")
  end
end

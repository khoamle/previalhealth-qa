require 'rails_helper'

describe 'Prevail Health home page' do
  before do
    @home_page = HomePage.new
    @home_page.load
  end

  context "navbar menu links" do
    it 'should take me to the our solutions page' do
      @home_page.nav_bar_our_solution.click
      expect(@home_page.current_url).to include '/our-solution'
    end

    it 'should take me to the research page' do
      @home_page.nav_bar_research.click
      expect(@home_page.current_url).to include '/research'
    end

    it 'should take me to the outcomes page' do
      @home_page.nav_bar_outcomes.click
      expect(@home_page.current_url).to include '/outcomes'
    end

    it 'should take me to the contact us page' do
      @home_page.nav_bar_contact_us.click
      expect(@home_page.current_url).to include '/contact-us'
    end

    it 'should take me to the careers page' do
      @home_page.nav_bar_careers.click
      expect(@home_page.current_url).to include '/careers'
    end

    it 'should take me to the about us page' do
      @home_page.nav_bar_about_us.click
      expect(@home_page.current_url).to include '/about-us'
    end

    it 'should take me to blog page' do
      within('.navbar-right') do
        click_on 'Blog'
      end
      expect(@home_page.current_url).to include '/blog'
    end

    it 'should take me to blog page' do
      within('.navbar-right') do
        click_on 'News'
      end
      expect(@home_page.current_url).to include '/news'
    end

    it 'should take me to the prevail health linkedin page' do
      @home_page.navbar_right.linkedin_icon.click
      page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
        expect(@home_page.current_url).to include('prevail-health-solutions')
      end
    end

    it 'should take me to the prevail health facebook page' do
      @home_page.navbar_right.facebook_icon.click
      page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
        expect(@home_page.current_url).to eq('https://www.facebook.com/PrevailHealth')
      end
    end

    it 'should take me to the prevail health twitter page' do
      @home_page.navbar_right.twitter_icon.click
      page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
        expect(@home_page.current_url).to eq('https://twitter.com/iPrevailHealth')
      end
    end

    it 'should take me to the prevail health everipedia page' do
      @home_page.navbar_right.everipedia_icon.click
      page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
        expect(@home_page.current_url).to eq('https://www.everipedia.com/Prevail_Health_Solutions/')
      end
    end
  end

  context 'first section of prevail health home page' do
    it 'should take me to the our solutions page' do
      @home_page.solution_button.click
      expect(@home_page.current_url).to include '/our-solution'
    end
    it 'should open the prevail vimeo video' do
      @home_page.video_link.click
      @home_page.find_link("Prevail Health")
    end
  end

  context 'second section of prevail health home page' do
    it 'should take me to the see our outcomes page' do
      @home_page.solution_button.click
      expect(@home_page.current_url).to include '/our-solution'
    end
    it 'should open the prevail vimeo video' do
      @home_page.video_link.click
      @home_page.find_link("Prevail Health")
    end
  end
  context 'mission section of prevail health home page' do
    it 'should take me to the outcomes page' do
      click_link('See Our Outcomes')
      expect(@home_page.current_url).to include '/outcomes'
    end
  end
  context 'offer section of prevail health home page' do
    it 'should take me to the research page' do
      click_link('See Our Research')
      expect(@home_page.current_url).to include '/research'
    end
  end
end

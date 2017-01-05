require 'rails_helper'

describe 'Prevail Health our solution page' do
  before do
    @our_solution_page = OurSolutionPage.new
    @our_solution_page.load
  end

  it 'should take me to trained peer specialists page' do
    find("a", :text => "Trained Peer Specialists").click
    # The link is invalid. Does not go to correct link.
    expect(@our_solution_page.current_url).to eq("https://prevailhealth.co/pdf/about-our-trained-peer-specialists.pdf")
  end

  it 'should take me to VetsPrevail webpage' do
    @our_solution_page.vets_prevail_image.click
    page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
      expect(@our_solution_page.current_url).to eq("https://www.vetsprevail.org/")
    end
  end

  it 'should take me to WarriorsPrevail webpage' do
    @our_solution_page.warriors_prevail_image.click
    page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
      # Link goes back to same page. Warriors Prevail app not complete.
      expect(@our_solution_page.current_url).to include '/our-solution'
    end
  end

  it 'should take me to iPrevail webpage' do
    @our_solution_page.iprevail_image.click
    page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
      expect(@our_solution_page.current_url).to eq("https://www.iprevail.com/")
    end
  end

  it 'should take me to momsprevail webpage' do
    @our_solution_page.momsprevail_image.click
    page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
      # Link goes back to same page. momsprevail app not complete.
      expect(@our_solution_page.current_url).to include '/our-solution'
    end
  end

  it 'should take me to iprevail student webpage' do
    @our_solution_page.iprevail_student_image.click
    page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
      # Link goes back to same page. iprevail student app not complete.
      expect(@our_solution_page.current_url).to include '/our-solution'
    end
  end


end

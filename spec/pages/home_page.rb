class HomePage < SitePrism::Page
  set_url "/"

  element :nav_bar_our_solution, "#menu-item-25"
  element :nav_bar_research, "#menu-item-26"
  element :nav_bar_outcomes, "#menu-item-27"
  element :nav_bar_contact_us, "#menu-item-28"
  element :nav_bar_careers, "#menu-item-29"
  element :nav_bar_about_us, "#menu-item-1503"

  section :navbar_right, ".navbar-right" do
    element :linkedin_icon, ".icon-linkedin"
    element :facebook_icon, ".icon-facebook"
    element :twitter_icon, ".icon-twitter"
    element :everipedia_icon, ".icon-Everipedia"
  end

  element :solution_button, "#demo_button"
  element :video_link, "#video_link"
end

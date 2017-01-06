class IprevailPage < SitePrism::Page
  set_url "https://www.iprevail.com"

  element :get_started_button, "#get-started-button"
  element :skip_continue_button, :xpath, '//*[@id="application-content"]/div/div/div/div/div[1]/div/a'
end

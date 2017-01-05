class OurSolutionPage < SitePrism::Page
  set_url "/our-solution"

  element :vets_prevail_image, :xpath, "/html/body/section[2]/ul/li[1]"
  element :warriors_prevail_image, :xpath, "/html/body/section[2]/ul/li[2]"
  element :iprevail_image, :xpath, "/html/body/section[2]/ul/li[3]"
  element :momsprevail_image, :xpath, "/html/body/section[2]/ul/li[4]"
  element :iprevail_student_image, :xpath, "/html/body/section[2]/ul/li[5]"
end

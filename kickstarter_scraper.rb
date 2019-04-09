# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  # write your code here
  html = File.read("fixtures/kickstarter.html")
  #reads kickstarter.html and sets equal to html string
  kickstarter = Nokogiri::HTML(html)
  #sets kickstarter equal to NodeSet converted from html string
  
  binding.pry
  
  
end

create_project_hash
#projects: kickstarter.css("li.project.grid_4")
#titles: project.css("h2.bbcard_name strong a")
#image link: project.css("div.project-thumbnail a img").attribute("src").value
#descriptions: project.css("p.bbcard_blurb").text
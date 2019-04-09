# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  # write your code here
  html = File.read("fixtures/kickstarter.html")
  #reads kickstarter.html and sets equal to html string
  kickstarter = Nokogiri::HTML(html)
  #sets kickstarter equal to NodeSet converted from html string
  projects = {}
  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
  end
  
  binding.pry
  
  
end

create_project_hash
#projects: kickstarter.css("li.project.grid_4")
#titles: project.css("h2.bbcard_name strong a")
#image link: project.css("div.project-thumbnail a img").attribute("src").value
#descriptions: project.css("p.bbcard_blurb").text
#location: project.css("span.location-name").text
#percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
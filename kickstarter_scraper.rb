# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  # write your code here
  html = File.ready("fixtures/kickstarter.html")
  #reads kickstarter.html and sets equal to html string
  kickstarter = Nokogiri::HTML(html)
  #sets kickstarter equal to NodeSet converted from html string
  
  binding.pry
  
  
end

create_project_hash
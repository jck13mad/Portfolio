# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Running DB seed..."

puts "Dropping DB..."
Project.destroy_all
Comment.destroy_all

project_data = [
    {
        id: 1,
        name: "Covid-19 Updates CLI Gem",
        description: "As my first project for Flatiron, I built a Covid-19 News Tracker to find the latest news about the pandemic from 4 of the top news companies in the United States. After selecting which news source you would like to view stories from, the stories populate in numbered fashion. These stories are scraped directly from each news source's website using nokogiri, and the user can select which story they would like to dive deeper into. The story is then displayed on the command line for further inspection.",
        github_url: "https://github.com/jck13mad/covid_19_updates",
        image_url: "./images/covid19Updates.png",
        label: "cli gem ruby",
        blog_url: "https://jck13mad.blogspot.com/2020/04/without-doubt-this-was-hardest-i-have.html"
    },

    {
        id: 2,
        name: "Heading Up",
        description: "Heading Up is a simple Sinatra Application using ActiveRecord that has brought my two passions of lacrosse and coding together. This application was built to show the MVC framework, as well as a showcase for some RESTful API and CRUD abilities. If you would like to view the code behind the machine, this can be found on my github. Thank you and I hope you enjoy!",
        github_url: "https://github.com/jck13mad/headingup",
        image_url: "./images/headingUp.png",
        label: "RESTful Ruby Sinatra MVC CRUD Shopping User-Account SQL",
        blog_url: "https://jck13mad.blogspot.com/2020/12/frank-sinatra-project.html"
    },

    {
        id: 3,
        name: "Photo-Synthesis",
        description: "Photo-Synthesis is a gardener's dream social media site to show off and comment on plants of all kinds. As my first project involving Ruby on Rails, I hope you enjoy this botanical instagram.",
        github_url: "https://github.com/jck13mad/photo-synthesis",
        image_url: "./images/photoSynthesis.png",
        label: "Ruby Rails CRUD MVC Omniauth Comment User-Account SQL",
        blog_url: "https://jck13mad.blogspot.com/2021/02/flatiron-rails-project-photo-synthesis.html"
    },

    {
        id: 4,
        name: "Hidden Eats",
        description: "Hidden Eats has a JavaScript frontend and Rails API backend. It was made with care for Flatiron School's SE course and is for everyone that loves to find those hidden gems at different restaurants. Follow Installation instructions to start letting people know about your Hidden Eats!",
        github_url: "https://github.com/jck13mad/HiddenEats-Frontend",
        image_url: "./images/hiddenEats.png",
        label: "Ruby Rails API CRUD Comment Javascript Bootstrap SQL",
        blog_url: "https://jck13mad.blogspot.com/2021/04/flatiron-javascript-project-hidden-eats.html"
    },

    {
      id: 5,
      name: "Personal Portfolio",
      description: "You are currently here! This is my final project for my Software Engineering course at Flatiron School. Using React, a Rails backend, and a Bootswatch CSS theme, the project was a blast to put together. All in all I really needed to create myself a website if I'm going to be telling people I can create one for them.",
      github_url: "https://github.com/jck13mad/portfolio-frontend",
      image_url: "./images/personalPortfolio.png",
      label: "Ruby Rails API CRUD Comment Javascript React Bootstrap SQL"
    }
]
puts "Creating Projects"
project_data.each do |data|
    project = Project.create(
      id: data[:id],
      name: data[:name],
      description: data[:description],
      image_url: data[:image_url],
      github_url: data[:github_url],
      blog_url: data[:blog_url],
      label: data[:label]
    )

    puts "Adding comments for project - #{project.name}..."
  comment_data = data[:comments]
  unless comment_data.nil?
    c = Comment.new
    c.project_id = project.id
    comment_data.each do |key, value|
      c[key] = value
    end
    c.save!
  end
end

puts "Finished Seeding"
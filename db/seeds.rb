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
Stack.destroy_all
ProjectStack.destroy_all

project_data = [
    {
        name: "Covid-19 News Tracker CLI Gem",
        description: "As my first project for Flatiron, I built a Covid-19 News Tracker to find the latest news about the pandemic from 4 of the top news companies in the United States. After selecting which news source you would like to view stories from, the stories populate in numbered fashion. These stories are scraped directly from each news source's website using nokogiri, and the user can select which story they would like to dive deeper into. The story is then displayed on the command line for further inspection."
        github_url: "https://github.com/jck13mad/covid_19_updates",
        image_url: " ",
        label: "cli gem ruby "
    }
]
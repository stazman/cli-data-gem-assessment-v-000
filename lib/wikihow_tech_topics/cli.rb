require_relative 'scraper'
require 'pry'

class WikihowTechTopics::CLI

    
    def call
        start
    end

    def start
        puts "Welcome to Wikihow Tech Topics!"
        puts ""
        puts "Review the list of articles above then \ntype the number of the article above \nthat you wish to read."
        puts ""
    end

    def self.scraped_titles
        newly_scraped_for_titles = WikihowTechTopics::Scraper.scraped_title_array

        newly_scraped_for_titles.each.with_index(1) do |title, i|
            unless title == ""
                puts "#{i}. #{title}"
            end      
        end
        puts ""
        puts ""
    end
    
    scraped_titles

    def run_content
        
        newly_scraped_for_content = WikihowTechTopics::Scraper.scraped_content_array

        newly_scraped_for_content.each do |content_steps|
            puts "#{content_steps}"
        end
    end    
end





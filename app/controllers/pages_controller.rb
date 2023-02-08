class PagesController < ApplicationController
    def home
        render html: "Hello World"
    end

    def about 
        render html: "FIRST Ruby on Rails Project!"
    end
end

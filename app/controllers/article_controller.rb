class ArticleController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        article= Article.create(author: params[:author],title: params[:title],
                    date:params[:date],category:params[:category],body:params[:body])
        render json: article 
    end

#pagination
    def read_all
        page_no= (params[:page]).to_i
        page_no= page_no -1
        lim=5
        a=0
        
        articles= Article.limit(lim).offset(lim*page_no)
        
        render json: articles
    end

    def update
        Article.update(params[:id], author: params[:author],title: params[:title],
        date:params[:date],category:params[:category],body:params[:body])   
    end

    def index 
        article= Article.find(params[:id])
        render json: article
    end

    def delete
        Article.delete(params[:id])
    end

    def category
        article= Article.where(category:params[:category])
        render json: article
    end

    def author
        article= Article.where(author:params[:author])
        render json: article
    end
       
    def partial_title
        article= Article.where("title Like ?", "%#{params[:title]}%")
        render json: article
    end


    def up_particular
        a=Article.find_by(id: params[:id])
        a.author=params[:author] || a.author
        a.title= params[:title] || a.title
        a.date= params[:date] || a.date
        a.category= params[:category] || a.category
        a.body= params[:body] || a.body

        a.save

        render json:a
    end


    def date_range
        article=Article.where(date: (params[:start]..params[:end]))
        render json: article
    end



end


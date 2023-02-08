class ContactController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        contacts = Contact.find(params[:id])
        render json: contacts
    end

    def add 
        c=Contact.create(name: params[:name])
        render json: c
    end
end

class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def hello
        render html: "hello, world!"
    end
    
    before_action :authenticate_user!

    helper_method :plan_structure

    def plan_structure
        if session[:plan_id]
            @plan=Plan.find(session[:plan_id])
        else
            @plan=Plan.create
            session[:plan_id]=@plan.id
        end
    end
end

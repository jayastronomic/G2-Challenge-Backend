class SessionsController < ApplicationController
    def create
        @visitor = Visitor.find_by(name: session_params[:name])
        if @visitor
          login!
          render json: @visitor, logged_in: true
        else
          render json: { visitor: nil }
        end
    end

    def is_logged_in?
        if logged_in? && current_visitor
          render json: current_visitor, logged_in: true
        else
          render json: { logged_in: false, visitor: nil }
        end
    end

    def destroy
      visitor = current_visitor
      logout!
      render json: visitor, logged_in: false  
    end

    private

    def session_params
        params.require(:visitor).require(
            :name
        )
    end
end
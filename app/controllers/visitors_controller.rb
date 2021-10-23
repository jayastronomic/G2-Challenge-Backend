class VisitorsController < ApplicationController
    def create
        @visitor = Visitor.new(visitor_params)
        if !@visitor.valid?
            @visitor = Visitor.find_by(visitor_params)
            login!
            render json: @visitor, logged_in: true
        else
            if @visitor.save
                login!
                render json: @visitor, logged_in: true, new_visitor: true
            else
                render json: { visitor: nil, error: @visitor.errors.full_messages }
            end
        end
    end


    def visitor_params
        params.require(:visitor).permit(
            :name
        )
    end
end
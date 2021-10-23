class VotesController < ApplicationController
    def create
        if already_voted?
            render json: { message: "ALREADY_VOTED"}
        else
            vote = Vote.new(vote_params)
            vote.save
            render json: vote, created: true, current_visitor_id: vote.visitor.id
        end
    end


    
    
    



    private

    def vote_params
        params.require(:vote).permit(
            :visitor_id,
            :employee_id
        )
    end

    def already_voted?
        @vote = Vote.find_by(vote_params)
    end


end
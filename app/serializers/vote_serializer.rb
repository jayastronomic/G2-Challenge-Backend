class VoteSerializer < ActiveModel::Serializer
    attributes :id, :visitor_id , :employee_id, :created


    def created
        @instance_options[:created]
    end

end
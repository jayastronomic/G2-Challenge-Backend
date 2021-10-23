class EmployeeSerializer < ActiveModel::Serializer
    attributes :id, :name, :title, :bio, :image_url, :voted_by_current_visitor, :num_of_votes


    def voted_by_current_visitor
        Vote.where(employee_id: object.id, visitor_id: @instance_options[:current_visitor_id]).exists?
    end

    def num_of_votes
        object.votes.length
    end
  
    
  
end
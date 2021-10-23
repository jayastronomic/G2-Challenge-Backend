class VisitorSerializer < ActiveModel::Serializer
  attributes :id, :name, :logged_in
  has_many :employees, through: :votes

  def logged_in
    @instance_options[:logged_in]
  end

  def new_visitor
    @instance_options[:new_visitor]
  end

  

end

class ClientMembershipSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :show_mem_total

  
  def show_mem_total
  
  "Total cost of all memberships: #{self.object.memberships.sum(:charge)}"
  
  end

end

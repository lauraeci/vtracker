module FormHelper
  def setup_member(member)
    member.address ||= Address.new
    member
  end
end
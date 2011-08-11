class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :read, :all
    else
      can :manage, Restaurant, :user_id => user.id
      can :create, Restaurant
    end
  end
end

# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role == 'user'
      can :read, Car
      can :read, Reservation, user_id: user.id
      can :create, Reservation
    elsif user.role == 'admin'
      can :manage, :all
    end
  end
end

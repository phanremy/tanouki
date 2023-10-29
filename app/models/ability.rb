# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    admin_abilities if user.admin?
    user_abilities(user) if user
  end

  def admin_abilities
    can :manage, Post
    can :manage, List
    can :manage, Item
  end

  def user_abilities(user)
    can :manage, Post, user: user
    can :manage, List, user: user
    can :manage, Item, user: user
  end
end

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # гость
    #администратор может управлять всем
    if user.admin?
        can :manage, :all
    else
        can :read, :all
    end
    #оператор может управлять заявками и контрактами
    if user.operator?
        can :manage, Request
        can :manage, Contract
    end
    #клиент может управлять своими заявками и создавать отзывы
    if user.client?
        can :manage , Request , :created_by: user.id
        can :create , Review 
    end
  end
end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities

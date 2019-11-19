class ApplicationPolicy
  before_action :authenticate_user!
  include Pundit

  after_action :verify_authorized, except: :home, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :home, unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  # attr_reader :user, :record

  # def initialize(user, record)
  #   @user = user
  #   @record = record
  # end

  # def index?
  #   false
  # end

  # def show?
  #   false
  # end

  # def create?
  #   false
  # end

  # def new?
  #   create?
  # end

  # def update?
  #   false
  # end

  # def edit?
  #   update?
  # end

  # def destroy?
  #   false
  # end

  # class Scope
  #   attr_reader :user, :scope

  #   def initialize(user, scope)
  #     @user = user
  #     @scope = scope
  #   end

  #   def resolve
  #     scope.all
  #   end
  # end
end

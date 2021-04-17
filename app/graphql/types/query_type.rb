# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :questions, Questions::Base.connection_type, null: false do
      argument :where, Inputs::QuestionWhereInput, required: false
    end

    def questions(where: nil)
      QuestionPolicy::Scope.new(context[:current_user], Question).resolve.where(where).order(updated_at: :desc)
    end

    field :question, Questions::Base, null: true do
      argument :uuid, ID, required: true
    end

    def question(uuid:)
      QuestionPolicy::Scope.new(context[:current_user], Question).resolve.find_by(uuid: uuid)
    end

    field :subjects, SubjectType.connection_type, null: false

    def subjects
      SubjectPolicy::Scope.new(context[:current_user], Subject).resolve
    end

    field :reviewers, Types::Core::UserType.connection_type, null: false

    def reviewers
      UserPolicy::Scope.new(context[:current_user], User)
                       .resolve
                       .joins(:roles)
                       .where(roles: { name: %i[teacher nde] })
                       .distinct
    end

    field :current_user, Types::Core::UserType, null: true

    def current_user
      context[:current_user]
    end
  end
end

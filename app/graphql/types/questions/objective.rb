# frozen_string_literal: true

module Types
  module Questions
    class Objective < Types::BaseObject
      graphql_name 'ObjectiveType'

      field :id, ID, null: false
      field :introduction, String, null: true
      field :instruction, String, null: true
      field :body, String, null: true
      field :support, String, null: true
      field :alternatives, [Alternative], null: true
      field :explanation, String, null: true
      field :references, String, null: true
      field :status, Types::Questions::Status, null: true
      field :check_type, Types::Questions::CheckType, null: true
      field :difficulty, Types::Questions::Difficulty, null: true
      field :bloom_taxonomy, Types::Questions::BloomTaxonomy, null: true
      field :authorship_year, String, null: true
      field :source, String, null: true
      field :own, Boolean, null: true
      field :reviewer, Types::Users::Details, null: true

      field :subject, Types::SubjectType, null: true
      field :user_id, Integer, null: true

      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

      def alternatives
        object.alternatives || []
      end
    end
  end
end

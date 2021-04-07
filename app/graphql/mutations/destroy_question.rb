# frozen_string_literal: true

module Mutations
  class DestroyQuestion < BaseMutation
    type Boolean

    argument :question_id, ID, required: true

    def resolve(question_id:)
      question = ::Question.find_by(id: question_id)
      reviewer = question.reviewer

      return false unless QuestionPolicy.new(context[:current_user], question).destroy?

      question.destroy!

      # Noticed requires sidekiq, migrate this later on
      ReviewerMailer.with(question_id: question.id, recipient: reviewer)
                    .question_deleted_notification.deliver
    end
  end
end

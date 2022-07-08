# frozen_string_literal: true

class RentalPresenter < SimpleDelegator
  def status
    return '' unless super

    color_class = STATUS_COLOR[super.to_sym]
    content_tag :span, t(super), class: "badge bg-#{color_class}"
  end

  private

  attr_reader :rental

  STATUS_COLOR = {
    scheduled: 'warning',
    ongoing: 'primary',
    finalized: 'success',
    in_review: 'secondary'
  }.freeze

  delegate :content_tag, :t, to: :helpers

  def helpers
    ApplicationController.helpers
  end
end

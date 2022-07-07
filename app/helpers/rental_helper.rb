# frozen_string_literal: true

module RentalHelper
  STATUS_COLOR = {
    scheduled: 'warning',
    ongoing: 'primary',
    finalized: 'success',
    in_review: 'secondary'
  }.freeze

  def status(status)
    return '' unless status

    color_class = STATUS_COLOR[status.to_sym]
    content_tag :span, t(status), class: "badge bg-#{color_class}"
  end
end

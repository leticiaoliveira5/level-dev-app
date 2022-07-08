# frozen_string_literal: true

class RentalPresenter
  def initialize(rental)
    @rental = rental
  end

  def status
    return '' unless rental.status

    color_class = STATUS_COLOR[rental.status.to_sym]
    content_tag :span, t(rental.status), class: "badge bg-#{color_class}"
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

  def method_missing(symbol, *args, &block)
    rental.public_send(symbol, *args, &block)
  end

  def respond_to_missing?(method, include_all = false)
    rental.respond_to?(method, include_all)
  end
end

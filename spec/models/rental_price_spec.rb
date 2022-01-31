# frozen_string_literal: true

require 'rails_helper'

describe RentalPrice do
  it { should belong_to :subsidiary }
  it { should belong_to :category }
  it { should validate_presence_of :daily_rate }
end

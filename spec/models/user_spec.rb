# frozen_string_literal: true

require 'rails_helper'

describe User do
  it { should belong_to(:subsidiary).optional }
  it do
    should define_enum_for(:role)
      .with_values(
        user: 0,
        admin: 10
      )
  end
end

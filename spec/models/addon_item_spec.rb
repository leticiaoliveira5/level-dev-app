# frozen_string_literal: true

require 'rails_helper'

describe AddonItem do
  it { should belong_to :addon }
end

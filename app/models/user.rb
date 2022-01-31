# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :subsidiary, optional: true
  enum role: { user: 0, admin: 10 }
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end

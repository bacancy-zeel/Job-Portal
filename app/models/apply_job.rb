# frozen_string_literal: true

class ApplyJob < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
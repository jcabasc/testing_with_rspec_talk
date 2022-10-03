# frozen_string_literal: true

class Service < ActiveRecord::Base
  belongs_to :carrier
  has_many :plans
end
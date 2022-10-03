# frozen_string_literal: true

class Plan < ActiveRecord::Base
  belongs_to :service
  has_many :rates
end
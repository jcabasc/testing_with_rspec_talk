# frozen_string_literal: true

class Rate < ActiveRecord::Base
  belongs_to :plan
end
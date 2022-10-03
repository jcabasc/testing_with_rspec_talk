# frozen_string_literal: true

class Carrier < ActiveRecord::Base
  has_many :services
end
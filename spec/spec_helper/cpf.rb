# frozen_string_literal: true

module SpecHelper
  module Cpf
    INVALID_VALUES = ['', ' ', 'abc', '856.302.753-05', '662.443.744-87', '85630275304'].freeze
    VALID_VALUES = ['85630275305', '66244374487', nil].freeze
  end
end

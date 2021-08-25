# frozen_string_literal: true

require 'pry'
class FizzBuzz
  attr_accessor :number

  class NumberNotExistError < StandardError; end

  class NumberTooLargeError < StandardError; end

  def initialize(number:)
    validate_number(number: number)
    @number = number
  end

  def run
    result = []
    (1..number.to_i).map do |n|
      result << if (n % 3).zero? && (n % 5).zero?
                  'FizzBuzz'
                elsif (n % 3).zero?
                  'Fizz'
                elsif (n % 5).zero?
                  'Buzz'
                else
                  n
                end
    end
    puts result.inspect
  end

  private

  def validate_number(number:)
    raise  NumberNotExistError, 'Please provide correct number' if number.nil? || number.to_i.zero?
    raise  NumberTooLargeError, 'Please provide lower number' if number.to_i > 100
  end
end

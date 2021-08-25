# frozen_string_literal: true

require 'spec_helper'
require './lib/fizz_buzz'

RSpec.describe FizzBuzz do
  def fizzbuzz(number:)
    FizzBuzz.new(number: number)
  end

  describe '#new' do
    context 'when number does not exist' do
      it 'raise a NumberNotExistError exception' do
        expect { fizzbuzz(number: nil) }.to raise_error(FizzBuzz::NumberNotExistError)
      end
    end

    context 'when number is string' do
      it 'raise a NumberNotExistError exception' do
        expect { fizzbuzz(number: 'abc') }.to raise_error(FizzBuzz::NumberNotExistError)
      end
    end

    context 'when number is larger than 100' do
      it 'raise an NumberTooLargeError exception' do
        expect { fizzbuzz(number: 1000) }.to raise_error(FizzBuzz::NumberTooLargeError)
      end
    end
  end

  describe '#run' do
    context 'when number is less than 100' do
      it 'display fizzbuzz for number 5' do
        expect { FizzBuzz.new(number: 5).run }.to(
          output("[1, 2, \"Fizz\", 4, \"Buzz\"]\n").to_stdout
        )
      end

      it 'display fizzbuzz for number 15' do
        expect { FizzBuzz.new(number: 15).run }.to(
          output("[1, 2, \"Fizz\", 4, \"Buzz\", \"Fizz\", 7, 8, \"Fizz\", \"Buzz\", 11, \"Fizz\", 13, 14, \"FizzBuzz\"]\n").to_stdout
        )
      end
    end
  end
end

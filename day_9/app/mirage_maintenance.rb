require_relative 'history'

class MirageMaintenance
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def history_sum
    input
      .lines
      .map { |line| History.new(line) }
      .sum(&:value)
  end

  def history_left_sum
    input
      .lines
      .map { |line| History.new(line) }
      .sum(&:left_value)
  end
end
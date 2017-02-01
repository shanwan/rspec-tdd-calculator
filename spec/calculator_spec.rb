require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  before(:context) do
    # initialize calculator
    @my_calculator = Calculator.new(1)
  end

  describe "Initialization" do
    it "is an instance of the Calculator class" do
      expect(@my_calculator).to be_instance_of(Calculator)
    end
  end
end

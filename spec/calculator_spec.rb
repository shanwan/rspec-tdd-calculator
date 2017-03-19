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

  describe "Results" do
    it "should return current result" do
      expect(@my_calculator.num).to eq(1)
    end
    it "should not set result" do
      @my_calculator.num = 3 if respond_to? :num=
      expect(@my_calculator.num).to eq(1)
    end
  end


  describe "Addition" do
    it "would check for integer" do
      @my_calculator.add('x')
      expect(@my_calculator.num).to eq(1)
      end
      it "would add x to the internal result value" do
        @my_calculator.add(3)
        expect(@my_calculator.num).to eq(4)
        end
    end

    describe "Subtract" do
      it "would check for integer" do
        @my_calculator.subtract('x')
        expect(@my_calculator.num).to eq(4)
        end
        it "would substract x to the internal result value" do
          @my_calculator.subtract(1)
          expect(@my_calculator.num).to eq(3)
          end
    end

    describe "Multiply" do
      it "would check for integer" do
        @my_calculator.multiply('x')
        expect(@my_calculator.num).to eq(3)
        end
        it "would multiply x to the internal result value" do
          @my_calculator.multiply(4)
          expect(@my_calculator.num).to eq(12)
          end
    end

    describe "Divide" do
      it "would check for integer" do
        @my_calculator.divide('x')
        expect(@my_calculator.num).to eq(12)
        end
        it "would divide x to the internal result value" do
          @my_calculator.divide(2)
          expect(@my_calculator.num).to eq(6)
          end
    end

    describe "Chain-able methods?" do
      it "check if methods can be chained together" do
        @my_calculator.divide(3).multiply(10).add(2).subtract(5)
        expect(@my_calculator.num).to eq(17)
      end
    end

    describe "operation workable?" do
      it "check if add method can be called" do
        @my_calculator.operation('add', 8)
        expect(@my_calculator.num).to eq(25)
      end
      it "check if subtract method can be called" do
        @my_calculator.operation('subtract', 5)
        expect(@my_calculator.num).to eq(20)
      end
      it "check if multiply method can be called" do
        @my_calculator.operation('multiply', 3)
        expect(@my_calculator.num).to eq(60)
      end
      it "check if divide method can be called" do
        @my_calculator.operation('divide', 5)
        expect(@my_calculator.num).to eq(12)
      end
    end

    describe "Undo button" do
      it "check if previous result is displayed when undo is called" do
        @my_calculator.undo
        # expect(@@index).to eq(10)
        expect(@my_calculator.num).to eq(60)
      end
    end

    describe "Redo button" do
      it "check if current result is displayed when redo is called" do
        @my_calculator.redo
        expect(@my_calculator.num).to eq(12)
      end
    end

    describe "Reset" do
      it "should return to input" do
        @my_calculator.reset(2)
        expect(@my_calculator.num).to eq(2)
      end
    end

end

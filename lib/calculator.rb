class Calculator
  attr_reader :num

  @@memory = []
  @@index = -1

  def initialize(num)
    @num = num
    @@memory.push(@num)
    @@index += 1
  end

  def add(y)
    if y.is_a? Integer
      @num += y
      @@memory.push(@num)
      @@index += 1
      self
    else
      puts "only integers please"
    end
  end

  def subtract(y)
    if y.is_a? Integer
      @num -= y
      @@memory.push(@num)
      @@index += 1
      self
    else
      puts "only integers please"
    end
  end

  def multiply(y)
    if y.is_a? Integer
      @num *= y
      @@memory.push(@num)
      @@index += 1
      self
    else
      puts "only integers please"
    end
  end

  def divide(y)
    if y.is_a? Integer
      @num /= y
      @@memory.push(@num)
      @@index += 1
      self
    else
      puts "only integers please"
    end
  end

  def operation(method, y)
    if y.is_a? Integer
      case method
      when 'add'
        add(y)
      when 'subtract'
        subtract(y)
      when 'multiply'
        multiply(y)
      when 'divide'
        divide(y)
      else
        puts "wrong input"
      end
    else
      puts "only integers please"
    end
  end

  def undo
    @@index -= 1
    @num = @@memory[@@index]
  end

  def redo
    @@index += 1
    @num = @@memory[@@index]
  end

  def reset(x)
    @@index = -1
    @@memory = []
    @num = x
    @@memory.push(@num)
    @@index += 1
  end

end

module DemoModule
  class DemoClass
    def self.introduce
      2
      # TODO: choose return between 1, 2, 3
    end

    def introduce
      3
      # TODO: choose return between 1, 2, 3
    end
  end

  def self.introduce
    1
    # TODO: choose return between 1, 2, 3
  end
end

def winning_combination?
  first = DemoModule.introduce
  second = DemoModule::DemoClass.introduce
  third = DemoModule::DemoClass.new.introduce
  # Next line should return true!
  [first, second, third] == [1, 2, 3]
end

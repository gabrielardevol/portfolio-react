class YieldTest

  def test
    def one_yield
      yield
    end

    def multiple_yields
      yield
      yield
    end
    yield

  end
end

YieldTest.new.test

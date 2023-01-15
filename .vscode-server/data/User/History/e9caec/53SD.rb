class YieldTest
  def one_yield
    yield
  end

  def multiple_yields
    yield
    yield

end
end

one_yield { puts "one yield" }

multiple_yields { puts "multiple yields" }

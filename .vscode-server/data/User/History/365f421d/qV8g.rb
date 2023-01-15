def method
hello= yield
puts hello
end

method {"hey,"
  method {"hello!"}}

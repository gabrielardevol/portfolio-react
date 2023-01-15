def method
hello= yield
puts hello
end

method {"hello!"}

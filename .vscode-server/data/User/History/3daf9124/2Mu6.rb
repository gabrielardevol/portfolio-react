# fail Exception, "error"
class ErrorClass < Exception; puts "error class" end

begin
fail ErrorClass
rescue ErrorClass
  puts "rescue error class"
end

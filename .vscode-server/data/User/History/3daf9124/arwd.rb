# fail Exception, "error"
class ErrorClass < Exception; puts "error class" end

fail ErrorClass

begin
rescue ErrorClass
  puts "rescue error class"
end

# fail Exception, "error"
class ErrorClass < Exception; "error class" end

begin
  fail ErrorClass
  fail ErrorClass
  fail ErrorClass

  rescue ErrorClass; puts "rescue error class"
end

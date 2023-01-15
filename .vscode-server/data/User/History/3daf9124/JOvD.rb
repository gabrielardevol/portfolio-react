# fail Exception, "error"
class ErrorClass < Exception; "error class" end

begin
fail ErrorClass
rescue ErrorClass
  "rescue error class"
end

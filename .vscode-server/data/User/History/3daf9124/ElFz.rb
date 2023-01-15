# fail Exception, "error"
class ErrorClass < Exception; "error class" end
fail ErrorClass
begin
fail ErrorClass
rescue ErrorClass
  "rescue error class"
end

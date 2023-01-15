# fail Exception, "error"

class ErrorClass < Exception; puts "error class" end

fail ErrorClass

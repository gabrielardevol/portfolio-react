# fail Exception, "error"

class ErrorEspecific < Exception; puts "error class" end

fail ErrorEspecific

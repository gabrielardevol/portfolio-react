# fail Exception, "error"

class ErrorEspecific < Exception; puts "Hola" end

fail ErrorEspecific

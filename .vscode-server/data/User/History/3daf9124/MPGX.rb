# fail Exception, "excepció"

class ErrorEspecific < Exception; puts "Hola" end

fail ErrorEspecific

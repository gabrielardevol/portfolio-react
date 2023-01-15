# fail Exception, "error"

class ErrorClass < Exception; puts "error class" end

fail ErrorClass

p 1
begin
p 2
p 3
end
p 4

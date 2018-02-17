class Loader

    def loadFunction      
        clazz = Object.const_get(ENV["MODULE_NAME"])
        obj = clazz.new()
        obj.method(ENV["FUNCTION_HANDLER"])
    end

end
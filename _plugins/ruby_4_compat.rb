# Compatibility shim for older Jekyll/Liquid versions under Ruby 4.
# Liquid 4 still calls Object#tainted?, which Ruby 4 removed.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end

unless Object.method_defined?(:untaint)
  class Object
    def untaint
      self
    end
  end
end

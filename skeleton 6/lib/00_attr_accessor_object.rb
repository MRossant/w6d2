class AttrAccessorObject
  def self.my_attr_accessor(*names)
    # ...
    # it should define a getter
    # it should define a setter
    names.each do |name|
      define_method(name) do
        instance_variable_get("@#{name}")
      end

      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value)
      end
    end
  end
end

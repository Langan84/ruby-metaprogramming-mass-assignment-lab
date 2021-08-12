class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, 
  :weight, :handed, :complexion, :t_shirt_size, 
  :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
        attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send(("#{key}="), value)
        end
  end
end

# Your initialize method should use iteration and the .send method to mass assign the value of each key/value pair to its associated key (i.e. method). Refer to the previous reading to help you solve this one.
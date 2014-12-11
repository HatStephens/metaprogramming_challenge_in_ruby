class Student

  attr_reader :badges

  def initialize
    @badges = []
  end

  def award(badge)
    @badges << badge.to_s
  end


  def method_missing(name)
    if (name.to_s.match(/^has_.+?\?/))
      define_badge_check_method(name)
      self.send(name)                          # this calls the method
    else
      puts "Sorry, I don't have that method!"  # "super" here for default
    end
  end


  private

  def define_badge_check_method(name)
    self.class.send(:define_method, name) do
        @badges.include?(get_badge_name(name)) ? true : false
      end
  end

  def get_badge_name(name_of_method)
      name_of_method.to_s[4..-2]
  end

end
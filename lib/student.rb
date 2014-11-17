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
      self.class.send(:define_method, name) do
        @badges.include?(get_badge_name(name)) ? true : false
      end
      self.send(name)     # this creates the method
    else
      puts "Sorry, I don't have that!"  # could write   super   here
    end
  end



  private

  def get_badge_name(name_of_method)
      name_of_method.to_s[4..-2]
  end

end
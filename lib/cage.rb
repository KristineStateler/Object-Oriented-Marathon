class Cage
  attr_accessor :animal

  def initialize
    @animal = nil
  end
  
  def empty?
    #@animal.nil?
    @animal == nil
    # if @animal == nil
    #   true
    # else
    #   false
    # end
  end
end

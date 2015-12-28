class Gliffynator::Objects < Array

  attr_accessor :global_id_counter

  def initialize
    @global_id_counter = 1001
    super
  end
end

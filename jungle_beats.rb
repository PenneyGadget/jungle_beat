require 'beats'
require_relative 'linked_list'

def JungleBeats

  def initialize(text)
    @text = text
  end

end

beats_file = ARGV[0]
beats = File.read(beats_file)

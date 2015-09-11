require_relative 'linked_list'

class JungleBeat

  attr_accessor :beats, :linked_list

  def initialize(beats)
    @beats = beats
    split_beats = beats.split
    first_beat = split_beats[0]
    @linked_list = LinkedList.new(first_beat)
    split_beats[1..-1].each do |beat|
      linked_list.append(beat)
    end
  end

  def play
    `say -r 500 -v Boing #{beats}`
  end

end

# beats_file = ARGV[0]
# beats = File.read(beats_file)

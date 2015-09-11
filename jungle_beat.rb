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
    `say -r 200 -v Boing #{beats}`
  end

end

running = ($PROGRAM_NAME = __FILE__)

if running
  input_file = ARGV[0]
  beats_string = File.read(input_file)
  sounds_count = beats_string.split.length

  JungleBeat.new(beats_string).play
  puts "Played #{sounds_count} sounds from #{input_file}"
end

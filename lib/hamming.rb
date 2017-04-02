class Hamming
  def self.compute first_strand, second_strand
    new(first_strand, second_strand).compute_hamming_distance
  end

  def initialize first_strand, second_strand
    @first_strand = first_strand.split(//)
    @second_strand =  second_strand.split(//)
    raise ArgumentError if @first_strand.length != @second_strand.length
  end

  def compute_hamming_distance
    different_strand_chunks = []
    @first_strand.each_with_index do | strand_chunk, index|
      different_strand_chunks << strand_chunk if strand_chunk != @second_strand[index]
    end
    different_strand_chunks.length
  end
end
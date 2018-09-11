class CartesianProduct
  include Enumerable
  
  def initialize(seq1, seq2)
    @seq1 = seq1
    @seq2 = seq2
  end
  
  def each
    @seq1.each { |a| 
      @seq2.each { |b|
          yield [a,b]
      }
    }
  end
end

class Hamming

  def self.compute(s1, s2)
    if (s1.length != s2.length)
      raise ArgumentError.new("Error")
    end
    err =0
    for i in 0..(s1.length-1)
      if (s1[i] != s2[i])
        err= err+1
      end
     end
     return err
    #0
   end
 end
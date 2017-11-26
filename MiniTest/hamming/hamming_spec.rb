require 'hamming'

describe Hamming do
  describe ".compute" do
    it "0 is binary 0" do
      expect(Hamming.compute('', '')).to eq 0
    end
  end
  describe ".compute" do
    it "test_identical_strands" do
      expect(Hamming.compute('A', 'A')).to eq 0
    end
  end
  describe ".compute" do
    it "test_long_identical_strands" do
      expect(Hamming.compute('GGACTGA', 'GGACTGA')).to eq 0
    end
  end
  describe ".compute" do
    it "test_complete_distance_in_single_nucleotide_strands" do
      expect(Hamming.compute('A', 'G')).to eq 1
    end
  end
  describe ".compute" do
    it "test_complete_distance_in_small_strands" do
      expect( Hamming.compute('AG', 'CT')).to eq 2
    end
  end
  describe ".compute" do
    it "test_small_distance_in_long_strands" do
      expect( Hamming.compute('ACCAGGG', 'ACTATGG')).to eq 2
    end
  end
  describe ".compute" do
    it "test_large_distance" do
     expect( Hamming.compute('GATACA', 'GCATAA')).to eq 4
    end
  end

  describe ".compute" do
    it "test_large_distance_in_off_by_one_strand" do
      expect(Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')).to eq 9
    end
  end

  describe ".compute" do
    it "test_disallow_first_strand_longer" do
      expect{(Hamming.compute('AATG', 'AAA'))}.to raise_error(ArgumentError)
    end
  end

end


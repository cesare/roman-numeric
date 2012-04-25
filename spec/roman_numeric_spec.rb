require File.join(File.dirname(__FILE__), '..', 'lib', 'roman_numeric')

describe RomanNumeric do
  context ".to_roman" do
    subject { RomanNumeric.to_roman(num) }
    
    context "with single digit numbers" do
      context "given 1" do
        let(:num) { 1 }
        it { should == "i" }
      end

      context "given 2" do
        let(:num) { 2 }
        it { should == "ii" }
      end

      context "given 4" do
        let(:num) { 4 }
        it { should == "iv" }
      end

      context "given 5" do
        let(:num) { 5 }
        it { should == "v" }
      end

      context "given 6" do
        let(:num) { 6 }
        it { should == "vi" }
      end

      context "given 7" do
        let(:num) { 7 }
        it { should == "vii" }
      end

      context "given 9" do
        let(:num) { 9 }
        it { should == "ix" }
      end
    end
    
    context "with 2-digit numbers" do
      context "given 10" do
        let(:num) { 10 }
        it { should == "x" }
      end
      context "given 11" do
        let(:num) { 11 }
        it { should == "xi" }
      end
      context "given 19" do
        let(:num) { 19 }
        it { should == "xix" }
      end
      context "given 20" do
        let(:num) { 20 }
        it { should == "xx" }
      end
      context "given 21" do
        let(:num) { 21 }
        it { should == "xxi" }
      end
      context "given 28" do
        let(:num) { 28 }
        it { should == "xxviii" }
      end
      context "given 40" do
        let(:num) { 40 }
        it { should == "xl" }
      end
      context "given 50" do
        let(:num) { 50 }
        it { should == "l" }
      end
      context "given 70" do
        let(:num) { 70 }
        it { should == "lxx" }
      end
      context "given 90" do
        let(:num) { 90 }
        it { should == "xc" }
      end
      context "given 99" do
        let(:num) { 99 }
        it { should == "xcix" }
      end
    end
    
    context "with 3-digit numbers" do
      context "given 100" do
        let(:num) { 100 }
        it { should == "c" }
      end
      context "given 200" do
        let(:num) { 200 }
        it { should == "cc" }
      end
      context "given 400" do
        let(:num) { 400 }
        it { should == "cd" }
      end
      context "given 500" do
        let(:num) { 500 }
        it { should == "d" }
      end
      context "given 598" do
        let(:num) { 598 }
        it { should == "dxcviii" }
      end
      context "given 800" do
        let(:num) { 800 }
        it { should == "dccc" }
      end
      context "given 900" do
        let(:num) { 900 }
        it { should == "cm" }
      end
    end
    
    context "with 4-digit numbers" do
      context "given 1000" do
        let(:num) { 1000 }
        it { should == "m" }
      end
      context "given 1999" do
        let(:num) { 1999 }
        it { should == "mcmxcix" }
      end
      context "given 3999" do
        let(:num) { 3999 }
        it { should == "mmmcmxcix" }
      end
    end
    
    context "with 5-digit numbers" do
      context "given 10,000" do
        let(:num) { 10_000 }
        it { expect { subject }.to raise_error ArgumentError }
      end
    end
  end
end
# bowling_spec.rb
require './bowling'

describe Bowling, "#score" do
  let(:bowling){
    Bowling.new
  }
  
  before(:each) do
    bowling.number = 50
  end

  it "return L when the number is less" do
    bowling.guess(20).should == 'L'
  end

  it "return G when the number is greater" do
    bowling.guess(60).should == 'G'
  end

  it "return E when the number is Equal" do
    bowling.guess(10)
    bowling.guess(80)
    
    bowling.tries.should == 2
    bowling.guess(10).should_not == 'E'
    
    bowling.guess(50).should == 'E'
    bowling.tries.should == 4
  end

end
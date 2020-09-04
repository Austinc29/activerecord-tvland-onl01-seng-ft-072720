require_relative 'spec_helper'

describe Show do
  let(:show) {Show.new}

 

  it "has many characters in an array" do
    show.name = "The Simpsons"
    characters = [
      Character.new(:name => "Ralph Wiggum"),
      Character.new(:name => "Homer Simpson"),
      Character.new(:name => "Apu Nahasapeemapetilon")
    ]
    show.characters << characters
    show.save
    expect(show.characters.count).to eq(3)
    expect(show.characters.collect { |s| s.name }).to include("Homer Simpson")
  end

  

  it "can build its characters through a method" do
    show.name = "Happy Endings"
    show.characters.build(:name => "Penny")
    show.save
    expect(show.characters.count).to eq(1)
  end

  
   it "can build an associated network" do
    show.build_network(:call_letters => "NBC")
    expect(show.network.call_letters).to eq("NBC")
  end
end
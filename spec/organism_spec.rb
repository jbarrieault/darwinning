require_relative 'spec_helper'

describe Darwinning::Organism do
  let(:pop) { Darwinning::Population.new(organism: Triple, population_size: 10, fitness_goal: 0) }
  let(:org) { Darwinning::Organism.new(population: pop) }
  let(:triple) { Triple.new(population: pop) }

  it "name should default to blank" do
    expect(org.name).to eq ""
  end

  it "genes should default to empty array" do
    expect(org.genes).to eq []
  end

  it "genotypes should initialize to empty array if genes is empty" do
    expect(org.genotypes).to be {}
  end

  it "fitness should default to nil" do
    expect(org.fitness).to eq nil
  end

  it "child class should set name" do
    expect(triple.name).to eq "Triple"
  end

  it "child class should set genes" do
    expect(triple.genes.length).to eq 3
  end

  it "child class should initialize genotypes from genes" do
    expect(triple.genotypes.length).to eq 3
  end

  it "can reference its population" do
    expect(org.population).to eq(pop)
  end
end

require "spec_helper"

describe St2csv do
  it "has a version number" do
    expect(St2csv::VERSION).not_to be nil
  end

  it "Loads a Converter class" do
    expect(St2csv::Converter).to be_a(Class)
  end
end

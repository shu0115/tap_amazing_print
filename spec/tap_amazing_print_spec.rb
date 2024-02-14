# frozen_string_literal: true

RSpec.describe TapAmazingPrint do
  it "has a version number" do
    expect(TapAmazingPrint::VERSION).not_to be nil
  end

  it "tapp" do
    expect({ a: 1, b: 2, c: 3 }.tapp).to eq(ap({ a: 1, b: 2, c: 3 }))
  end

  it "tapap" do
    expect({ a: 1, b: 2, c: 3 }.tapap).to eq(ap({ a: 1, b: 2, c: 3 }))
  end
end

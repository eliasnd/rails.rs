require "pig_latin"

describe "PigLatin" do
  it "can translate text" do
    expect(PigLatin.translate("translate this for me")).to eq("ranslatetay histay orfay emay ")
  end
end

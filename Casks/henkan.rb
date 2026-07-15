cask "henkan" do
  version "1.2.0"
  sha256 "4b13f03d4035c4d4c6ab4159e8f2ebbe3023b43db51ce1516ccb922b1717f036"
  url "https://github.com/kaanreal/henkan/releases/download/v1.2.0/Henkan_1.2.0_aarch64.dmg"
  name "Henkan"
  desc "osu!mania to Etterna/StepMania beatmap converter"
  homepage "https://github.com/kaanreal/henkan"
  livecheck do
    url :url
    strategy :github_latest
  end
  depends_on macos: ">= :monterey"
  app "Henkan.app"
  zap trash: [
    "~/Library/Application Support/com.henkan.desktop",
    "~/Library/Saved Application State/com.henkan.desktop.savedState",
    "~/.config/henkan",
  ]
end

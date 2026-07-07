cask "henkan" do
  version "1.1.0"
  sha256 "1919444d4fe46ffdf5aeb0cd0b37c395be82ff29569afab2c404f5032e246b2d"
  url "https://github.com/kaanreal/henkan/releases/download/v1.1.0/Henkan_1.1.0_aarch64.dmg"
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

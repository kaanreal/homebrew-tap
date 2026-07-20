cask "henkan" do
  version "1.3.1"
  sha256 "0dcc26d83927cab35d63c8057965f41991bd9b827d8be0ad34d8eedf72ee525d"
  url "https://github.com/kaanreal/henkan/releases/download/v1.3.1/Henkan_1.3.1_aarch64.dmg"
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

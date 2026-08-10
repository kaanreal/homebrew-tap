cask "henkan" do
  version "1.5.1"
  sha256 "0f21edaf660aeb3f9a6fb1d77f961399fc2f5427ad8668b224386e1e850eaf19"
  url "https://github.com/kaanreal/henkan/releases/download/v1.5.1/Henkan-v1.5.1-macos.dmg"
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

cask "henkan" do
  version "1.3.0"
  sha256 "323fb1e026a33542854d393f81b0022b9694bde1cca8f5ac25769acf5d015125"
  url "https://github.com/kaanreal/henkan/releases/download/v1.3.0/Henkan_1.3.0_aarch64.dmg"
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

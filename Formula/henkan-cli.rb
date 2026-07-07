class HenkanCli < Formula
  desc "CLI for osu!mania to Etterna/StepMania beatmap converter"
  homepage "https://github.com/kaanreal/henkan"
  url "https://github.com/kaanreal/henkan/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "8f1ed82b5dd9312e2149228a9eabdbf65501e1e6a69058f438ceba3e4cbd4b8d"
  license "MIT"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args(path: "src-tauri")
    bin.install "henkan-cli"
  end
  test do
    assert_match "henkan-cli", shell_output("#{bin}/henkan-cli --help")
  end
end

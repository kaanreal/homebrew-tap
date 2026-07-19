class HenkanCli < Formula
  desc "CLI for osu!mania to Etterna/StepMania beatmap converter"
  homepage "https://github.com/kaanreal/henkan"
  url "https://github.com/kaanreal/henkan/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "d6d3a466f576587df44b5ca9b1b4ba6c3957bb185dec3103b0334cfcdfab8aa2"
  license "MIT"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args(path: "src-tauri"), "--bin", "henkan-cli"
  end
  test do
    assert_match "Usage", shell_output("#{bin}/henkan-cli --help")
  end
end

class HenkanCli < Formula
  desc "CLI for osu!mania to Etterna/StepMania beatmap converter"
  homepage "https://github.com/kaanreal/henkan"
  url "https://github.com/kaanreal/henkan/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "9ca8c6566c873a34922b505fe3e404a3b3f6511b3c29444fd3dd228f6368d491"
  license "MIT"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args(path: "src-tauri"), "--bin", "henkan-cli"
  end
  test do
    assert_match "Usage", shell_output("#{bin}/henkan-cli --help")
  end
end

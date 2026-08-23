class HenkanCli < Formula
  desc "CLI for osu!mania to Etterna/StepMania beatmap converter"
  homepage "https://github.com/kaanreal/henkan"
  url "https://github.com/kaanreal/henkan/archive/refs/tags/v1.6.1.tar.gz"
  sha256 "b15057fa8d69ed807bcc1a7339b8e0c197f4afc11e5b88e2be92cd9b86170b8f"
  license "MIT"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args(path: "src-tauri"), "--bin", "henkan-cli"
  end
  test do
    assert_match "Usage", shell_output("#{bin}/henkan-cli --help")
  end
end

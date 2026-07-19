class HenkanCli < Formula
  desc "CLI for osu!mania to Etterna/StepMania beatmap converter"
  homepage "https://github.com/kaanreal/henkan"
  url "https://github.com/kaanreal/henkan/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "3eb2b7c49f58b81187dfdec41bc8edca82b32b6d435d71fa58a99ea759bf29a4"
  license "MIT"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args(path: "src-tauri"), "--bin", "henkan-cli"
  end
  test do
    assert_match "Usage", shell_output("#{bin}/henkan-cli --help")
  end
end

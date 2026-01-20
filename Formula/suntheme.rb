class Suntheme < Formula
  desc "Automatic theme switching for Ghostty and Neovim based on sunrise/sunset"
  homepage "https://github.com/lucianlavric/suntheme"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-aarch64-apple-darwin.tar.gz"
      sha256 "e01c33790916488fee8fbf673539c91b71cf93e96feb308fcbbf6d1109d245b1"
    else
      url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-x86_64-apple-darwin.tar.gz"
      sha256 "199194103efe6ffcbfddffa44f0ef1a888720899451fa2975380f09407ad73e8"
    end
  end

  on_linux do
    url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "16077965b6475698c141d622316c9e9aea40a2afbb0876c5320433a06b7d9e0c"
  end

  def install
    bin.install "suntheme"
  end

  test do
    assert_match "suntheme", shell_output("#{bin}/suntheme --version")
  end
end

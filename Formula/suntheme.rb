class Suntheme < Formula
  desc "Automatic theme switching for Ghostty and Neovim based on sunrise/sunset"
  homepage "https://github.com/lucianlavric/suntheme"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-aarch64-apple-darwin.tar.gz"
      sha256 "b7c17b92591f704a8a151b3b70e72cbe7a7bd1e338e3d2052be010b5c54f3ed8"
    else
      url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-x86_64-apple-darwin.tar.gz"
      sha256 "76d70f0a35c5ccd09be79897fd165822db9079901276ee8b80081d2e84d65868"
    end
  end

  on_linux do
    url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a637c71553d4c9b7f9e6ac41bc0c127fbf7aa829d16aaef4371bf34cb5700dbd"
  end

  def install
    bin.install "suntheme"
  end

  test do
    assert_match "suntheme", shell_output("#{bin}/suntheme --version")
  end
end

class Suntheme < Formula
  desc "Automatic theme switching for Ghostty and Neovim based on sunrise/sunset"
  homepage "https://github.com/lucianlavric/suntheme"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-aarch64-apple-darwin.tar.gz"
      sha256 "db7ad6b5d2d81dae25da282763b5b59657b865fb8e2c5262ec522c01057c418b"
    else
      url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-x86_64-apple-darwin.tar.gz"
      sha256 "723b419f60b97a2ade1c9f45ef6eae7a2f0279abe9539e147c49c5cc2c036360"
    end
  end

  on_linux do
    url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "692115bb5026323b06d2ea6849a5a23d62454bf814a201cf3777ea007c93ab63"
  end

  def install
    bin.install "suntheme"
  end

  test do
    assert_match "suntheme", shell_output("#{bin}/suntheme --version")
  end
end

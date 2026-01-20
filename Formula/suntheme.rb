class Suntheme < Formula
  desc "Automatic theme switching for Ghostty and Neovim based on sunrise/sunset"
  homepage "https://github.com/lucianlavric/suntheme"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-aarch64-apple-darwin.tar.gz"
      sha256 "f652392353e44e49e234b30e702559c258ef4a25309dc2e94e2134bcac44859c"
    else
      url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-x86_64-apple-darwin.tar.gz"
      sha256 "182e5104753ed1b32dd53d33967b25008971c7ad256e8b8632926a3c07d99fa6"
    end
  end

  on_linux do
    url "https://github.com/lucianlavric/suntheme/releases/download/v#{version}/suntheme-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9f93eb3483b6bea9b26a1335022dc729afb1d300ab066267290c5fa0213bd5ee"
  end

  def install
    bin.install "suntheme"
  end

  test do
    assert_match "suntheme", shell_output("#{bin}/suntheme --version")
  end
end

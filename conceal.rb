class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.0"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.0.tar.gz"
    sha256 "a3de090e34b758bfe2c7f3d0a5af6580838323fcf430facf1a55fe30f85aea9a"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end
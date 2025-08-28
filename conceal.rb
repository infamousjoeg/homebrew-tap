class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.2"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.2.tar.gz"
    sha256 "c8a473b2a53d413adafd883e47944f2d73310153a4b0094796e4c680596b81c5"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

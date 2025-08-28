class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.7"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.7.tar.gz"
    sha256 "601fb326ed3851fad27df5436eeab5273eaa2178a1315efd402454492f4792d3"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

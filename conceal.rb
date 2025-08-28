class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.3"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.3.tar.gz"
    sha256 "97b390c5c4c5fb802939cce1c33980b50c1facfb5a108cd5356596b9c8d3df07"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

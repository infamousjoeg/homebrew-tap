class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.0"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.0.tar.gz"
    sha256 "b5933e811d26adde3f16b1fcece8d396bba010f558485e16466666f4d935b79a"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

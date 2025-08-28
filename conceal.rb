class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.2.2"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.2.2.tar.gz"
    sha256 "33f85985fe6f4274738bf7e14020fe1869bea6bb6af0934596814f07f4ef7162"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

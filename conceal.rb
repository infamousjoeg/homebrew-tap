class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.5"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.5.tar.gz"
    sha256 "1af33959675c918c22a896d64ee3dd3b751430af8c639316a96a1e527ac82baf"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

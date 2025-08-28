class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.6"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.6.tar.gz"
    sha256 "dca0ffe3135f5653183767edb5eeb3f96448059fe36a4165ef21133e742246da"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

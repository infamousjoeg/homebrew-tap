class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.9"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.9.tar.gz"
    sha256 "8b104501a18aabc2c2f40275dc82f032577749f986cd28a8d70bb62f3f65a4bf"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.2.3"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.2.3.tar.gz"
    sha256 "fdf345c5d17902b550cc99053306994be8bb7325d8dfa6d5b5adab7452c480e7"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

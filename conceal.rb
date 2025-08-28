class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.1"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.1.tar.gz"
    sha256 "570e73679c085e7319989c7a3e1d6bb878df7e562b285eff02072ad09b4fb199"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

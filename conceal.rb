class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.0.0"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/releases/download/v#{version}-release/conceal_#{version}_darwin_universal.tar.gz"
    sha256 "4e1ef1abb913e57fee68a6c72298a982f45f753caf33925952c745f6a1d4b9eb"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.8"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.8.tar.gz"
    sha256 "d6d1db0c3517be6f1bfc12746fa0342202feeef7efc82815245310ce3e257354"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

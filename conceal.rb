class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.4"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.1.4.tar.gz"
    sha256 "9cdb16f3283e72ec33fd25d50811e16593d92b40a95ee79e6e95390f14fd9e5e"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

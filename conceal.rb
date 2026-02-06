class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/conceal/releases/download/v4.2.0/conceal_Darwin_arm64.tar.gz"
      sha256 "bcb54082322bdac64077f4e0733c3f3f392b068f0cea9ed382a0048e3dfd06e8"
    else
      url "https://github.com/infamousjoeg/conceal/releases/download/v4.2.0/conceal_Darwin_x86_64.tar.gz"
      sha256 "f0f65e5c6f8f36156e70fe9d6125f5b13cf8021733910682cbe4fdf39a7fc202"
    end

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

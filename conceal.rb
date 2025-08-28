class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/conceal/releases/download/v4.1.0/conceal_Darwin_arm64.tar.gz"
      sha256 "340354d150578ff8484795314e17a8f38ed83f0db71f1a370deadd5786c0b429"
    else
      url "https://github.com/infamousjoeg/conceal/releases/download/v4.1.0/conceal_Darwin_x86_64.tar.gz"
      sha256 "53b54d220cf622c2d829e52c932d6fbbc94ae440b6c00528d04d989efb75ba97"
    end

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end
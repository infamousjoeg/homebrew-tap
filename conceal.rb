class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/conceal/archive/refs/tags/v4.2.0.tar.gz"
      sha256 "b466cacd87929c0517c1d0786c7892b5b4f8412259be817f36fbd8a87e36386f"
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
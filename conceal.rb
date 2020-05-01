class Conceal < Formula
  desc "Simply store secrets in MacOS Keychain Access for use by Summon"
  homepage "https://github.com/infamousjoeg/conceal"
  url "https://github.com/infamousjoeg/conceal/releases/download/v1.0.3-dev/conceal"
  sha256 "a0b667d7b3cbb24bfe6c4ce359e6f34b8bec25b189fdd357649df20027a69f14"
  bottle :unneeded

  def install
    bin.install "conceal"
  end

  test do
    system "#{bin}/conceal", "-v"
  end
end

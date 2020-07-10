class Conceal < Formula
  desc "Simply store secrets in MacOS Keychain Access for use by Summon"
  homepage "https://github.com/infamousjoeg/conceal"
  url "https://github.com/infamousjoeg/conceal/releases/download/v2.0.1-dev/conceal"
  sha256 "1ba365a6a42b113a52cef4d0a45fbf488cab5a0574e00c0a667c25157dc96d3c"
  bottle :unneeded

  def install
    bin.install "conceal"
  end

  test do
    system "#{bin}/conceal", "-v"
  end
end

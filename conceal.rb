class Conceal < Formula
  desc "Simply store secrets in MacOS Keychain Access for use by Summon"
  homepage "https://github.com/infamousjoeg/conceal"
  url "https://github.com/infamousjoeg/conceal/releases/download/v1.0.4-dev/conceal"
  sha256 "fd8e5da29a049fd8f13da0d9584502320cf5153510639ff27fc5be47b9e9a708"
  bottle :unneeded

  def install
    bin.install "conceal"
  end

  test do
    system "#{bin}/conceal", "-v"
  end
end

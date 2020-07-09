class Conceal < Formula
  desc "Simply store secrets in MacOS Keychain Access for use by Summon"
  homepage "https://github.com/infamousjoeg/conceal"
  url "https://github.com/infamousjoeg/conceal/releases/download/v2.0.0-dev/conceal"
  sha256 "2a7c162a41fdfd0ce25f4fc568baef4b6badc2e440b774b074c97200511db3b0"
  bottle :unneeded

  def install
    bin.install "conceal"
  end

  test do
    system "#{bin}/conceal", "-v"
  end
end

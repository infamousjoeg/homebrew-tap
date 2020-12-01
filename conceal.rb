class Conceal < Formula
  desc "Simply store secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  url "https://github.com/infamousjoeg/conceal/releases/download/v3.0.0-release/conceal"
  sha256 "0faf46fda8c335f2edfd8ecc9f3f6bb0fefe453889f4d66e42256e9dfcb5ebc3"
  bottle :unneeded

  def install
    bin.install "conceal"
  end

  test do
    system "#{bin}/conceal", "-v"
  end
end

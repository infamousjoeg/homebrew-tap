class Conceal < Formula
  desc "Simply store secrets in MacOS Keychain Access for use by Summon (https://cyberark.github.io/summon)"
  homepage "https://github.com/infamousjoeg/conceal"
  url "https://github.com/infamousjoeg/conceal/releases/download/v1.0.2-dev/conceal"
  version "1.0.2"
  sha256 "a76028596f5044f93bd5e7a27edfee9ae02747fb89af6c1714a240225a94ce8f"
  bottle :unneeded

  def install
    bin.install "conceal"
  end

  test do
    system "#{bin}/conceal", "-v"
  end
end

class Conceal < Formula
  desc "Simply manage secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "4.0.0"

  on_macos do
    url "https://github.com/infamousjoeg/conceal/releases/download/v#{version}-release/conceal_#{version}_darwin_universal.tar.gz"
    sha256 "ffbdab34ec9f0cf93ae7f983f13b76b8c1f259d07f830adcc6444ac0770c06b4"

    def install
      bin.install "conceal"
    end
  end

  test do
    system "#{bin}/conceal", "version"
  end
end

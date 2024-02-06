class Conceal < Formula
  desc "Simply store secrets in MacOS Keychain Access"
  homepage "https://github.com/infamousjoeg/conceal"
  version "3.0.0-release"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/conceal/releases/download/v#{version}/conceal"
      sha256 "0faf46fda8c335f2edfd8ecc9f3f6bb0fefe453889f4d66e42256e9dfcb5ebc3"

      def install
        bin.install "conceal"
      end
    end
  end

  test do
    system "#{bin}/conceal", "-v"
  end
end

class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "0.1.10-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.10-beta/darwin_arm64_cybr"
      sha256 "979df12f861cacf4662f264531e33020b1a7713e2413c8dd7822d7cea1b61b1e"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.10-beta/cybr"
      sha256 "979df12f861cacf4662f264531e33020b1a7713e2413c8dd7822d7cea1b61b1e"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.10-beta/linux_cybr"
      sha256 "979df12f861cacf4662f264531e33020b1a7713e2413c8dd7822d7cea1b61b1e"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

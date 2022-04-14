class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "0.1.9-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.9-beta/darwin_arm64_cybr"
      sha256 "9ba8255aa26d9f3be30e35507e9f3b81f77a48f869672011a7690ff48c1a2353"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.9-beta/cybr"
      sha256 "9ba8255aa26d9f3be30e35507e9f3b81f77a48f869672011a7690ff48c1a2353"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.9-beta/linux_cybr"
      sha256 "9ba8255aa26d9f3be30e35507e9f3b81f77a48f869672011a7690ff48c1a2353"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

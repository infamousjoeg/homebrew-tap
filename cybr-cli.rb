class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "0.1.12-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.12-beta/cybr-cli_darwin_arm64.tar.gz"
      sha256 "10c578d544267c837f869c88978dfc845c082f664db74d66233c41894730c86a"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.12-beta/cybr-cli_darwin_amd64.tar.gz"
      sha256 "f91189aa4db226318a7e24a0ded3a55a3a2494baa7d82a2ace7dc1c23d01b9a9"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.12-beta/cybr-cli_linux_arm64.tar.gz"
      sha256 "e1803918c01c8913881a2fadc3b956c141c7d2ea79f57feff81bcde4319ca5f9"

      def install
        bin.install "cybr"
      end
    end
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.12-beta/cybr-cli_linux_amd64.tar.gz"
      sha256 "f7e468683e47afbecfdc0f6a9a5d9be3b7c636fb5d24a85beeb7817f685c2e59"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

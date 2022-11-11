class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "0.1.13-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.13-beta/cybr-cli_darwin_arm64.tar.gz"
      sha256 "a8a5e792cf21b0577623531b1dc3eaa6baaa1e8e2ed28afe47c4af26116a0eb4"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.13-beta/cybr-cli_darwin_amd64.tar.gz"
      sha256 "25077c516c7e6e8bdb36d97f429a42451dbfbdcfdd6a12c3c7a7cdefb5afdc76"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.13-beta/cybr-cli_linux_arm64.tar.gz"
      sha256 "fe9e4f3b840e81212820a93e2daacc8e906c5ed9525236358912806427caaf65"

      def install
        bin.install "cybr"
      end
    end
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.13-beta/cybr-cli_linux_amd64.tar.gz"
      sha256 "71910d9bb0ea90e0109c3dabdafcb6eaf63d8f02270f0da4a0d7b6f335f537b7"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

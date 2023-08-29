class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "1.0.1-release"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "54cfede9e7ba1bde80abe3b9b4e82f9ca2690304d901c77c6218cac236f5fa06"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "2534edb9f76e7de28089c027a96d0081d666dc0c49fcc337e7c8340322e9e709"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_linux_arm64.tar.gz"
      sha256 "a87e7291b8e6898c83f5abfcdb5d4d9a975ccfa4e97fb5090afa142fe8dbff46"

      def install
        bin.install "cybr"
      end
    end
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_linux_amd64.tar.gz"
      sha256 "264bf96664425462106b53b085bc3aaba186a881fd2badde4d954bfc4c9f1cba"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

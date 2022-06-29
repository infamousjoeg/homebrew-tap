class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "0.1.11-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.11-beta/cybr-cli_darwin_arm64.tar.gz"
      sha256 "fec5d44a300d74ff1a1de69452322a75f45bdf91e553385d2e5fd1cab8b8ad98"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.11-beta/cybr-cli_darwin_amd64.tar.gz"
      sha256 "fec5d44a300d74ff1a1de69452322a75f45bdf91e553385d2e5fd1cab8b8ad98"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.11-beta/cybr-cli_linux_arm64.tar.gz"
      sha256 "a9d2077248658060256848f51e88c7e267c7cdfc2b3d0d4ef67842efda4eaeeb"

      def install
        bin.install "cybr"
      end
    end
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.11-beta/cybr-cli_linux_amd64.tar.gz"
      sha256 "11bd7f42db49aa1e35adb68826e928612e9560d5b62664065949b920c1fb0fbf"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

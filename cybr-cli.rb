class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "1.0.2-release"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "edbad81f2f28882b40b7b9f7803bebc8a9934d048d0344e97a3534c326bbebae"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "37484f5aece7a55358ac4920b587519b8395cb723698afcb65f4e4af7832a77a"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_linux_arm64.tar.gz"
      sha256 "ae1f7363d1b4a85449e65e1025f21815a21fe261c2e899e830ad55059df80004"

      def install
        bin.install "cybr"
      end
    end
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_linux_amd64.tar.gz"
      sha256 "6a554997ec05124f77c17ddf8f610d440a2ea04570be948a1d5193ffc6664451"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

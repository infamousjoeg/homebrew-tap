class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "1.0.1-release"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "8f99f29e6ceb25872beecdf20de549bab8960669e38cb0feb67e196e7179301e"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "f3ec8292319357166d194a24d68d0c3bd5e039460a643378d8a75a11ff288cbf"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_linux_arm64.tar.gz"
      sha256 "379868b2bb0adcfe1cb637079e95ff5179f378eff71737dbd5c345e87acbe201"

      def install
        bin.install "cybr"
      end
    end
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v#{version}/cybr-cli_#{version}_linux_amd64.tar.gz"
      sha256 "55ee474ef82c9186082d5c3699f47dfb74474c13089d75cec2d49b1600bc9391"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

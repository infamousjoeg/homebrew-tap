class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "1.0.0-release"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v1.0.0-release/cybr-cli_1.0.0-release_darwin_arm64.tar.gz"
      sha256 "a5d31df41e949c823d5225f96104205c0b70aee297a58312c3971e086851e388"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v1.0.0-release/cybr-cli_1.0.0-release_darwin_amd64.tar.gz"
      sha256 "11ad2e61c79a157a94978ccd5a72f4cf469c8cb6db14d7aa2bf478242965b086"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v1.0.0-release/cybr-cli_1.0.0-release_linux_arm64.tar.gz"
      sha256 "bd17130f6f929eda575898c4440d52bc74b68e16b9362ada06b9a597118dfd4f"

      def install
        bin.install "cybr"
      end
    end
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v1.0.0-release/cybr-cli_1.0.0-release_linux_amd64.tar.gz"
      sha256 "45dbccc18a00af0d981ef52ca3e85314cc4dc1d57f5a4b28fd0a17030893560e"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

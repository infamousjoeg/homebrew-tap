class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "0.1.8-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.8-beta/darwin_arm64_cybr"
      sha256 "8e015a42cda8059d7b9d7518390d249e12147db7a3a373921867fea4968d7561"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.8-beta/cybr"
      sha256 "8e015a42cda8059d7b9d7518390d249e12147db7a3a373921867fea4968d7561"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.8-beta/linux_cybr"
      sha256 "8e015a42cda8059d7b9d7518390d249e12147db7a3a373921867fea4968d7561"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

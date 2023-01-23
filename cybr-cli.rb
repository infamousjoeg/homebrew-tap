class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  version "0.1.14-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.14-beta/cybr-cli_darwin_arm64.tar.gz"
      sha256 "10eb3b1f0a03054e981e2cff688beb944a7fae72fcefd430c475edd8b6b4131a"

      def install
        bin.install "cybr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.14-beta/cybr-cli_darwin_amd64.tar.gz"
      sha256 "fb53a1fe6276ffe08ef2d42d15cae36988d9b63012c5b14e3a23c81a3a0bd075"

      def install
        bin.install "cybr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.14-beta/cybr-cli_linux_arm64.tar.gz"
      sha256 "2b04f5ba5a09437545e2ac6701eb26d08546e2bc2abec0c798af435906663b2a"

      def install
        bin.install "cybr"
      end
    end
    if Hardware:CPU.intel?
      url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.14-beta/cybr-cli_linux_amd64.tar.gz"
      sha256 "1cbd7905aa4fb813caa70789843ceeaaecc654fc370bbe69fa347fa699c25ccc"

      def install
        bin.install "cybr"
      end
    end
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

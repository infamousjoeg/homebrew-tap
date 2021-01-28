class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.0-beta/cybr"
  sha256 "e150712919f39dd232ecb8984535d82ed10af5dce24e81ce22992850da7ec1e2"
  license "Apache-2.0"
  bottle :unneeded

  def install
    bin.install "cybr"
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

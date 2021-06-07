class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.3-beta/cybr"
  sha256 "d811aaa36876260a94de1bc326a1bd73b8bd45bf25c86f98ffef73bc57e9bf7f"
  license "Apache-2.0"
  bottle :unneeded

  def install
    bin.install "cybr"
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

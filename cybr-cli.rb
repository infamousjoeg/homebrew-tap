class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.4-beta/cybr"
  sha256 "45352b4ed9df5ccd170dd671af595633f2bbc5509e9be820222a87c9c68fe1cf"
  license "Apache-2.0"
  bottle :unneeded

  def install
    bin.install "cybr"
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

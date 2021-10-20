class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.1.6-beta/cybr"
  sha256 "22aae86175533504e5c735a1ea4c3856b14e38beb8493e106688407627f72f8b"
  license "Apache-2.0"
  bottle :unneeded

  def install
    bin.install "cybr"
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

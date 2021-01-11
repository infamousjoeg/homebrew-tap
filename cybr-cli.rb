class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.0.4-alpha/cybr"
  sha256 "14f7145edb2d665886428110d221d4499ef64aacc0391d4f7b117265941f1512"
  license "Apache-2.0"
  bottle :unneeded

  def install
    bin.install "cybr"
  end

  test do
    system "#{bin}/cybr", "-v"
  end
end

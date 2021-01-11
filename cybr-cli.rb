class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  url "https://github.com/infamousjoeg/cybr-cli/archive/v0.0.4-alpha.tar.gz"
  sha256 "050ff47596234edd0397635d16b1c2ed1b4a41206641939bb7c6d18e78a7a8be"
  license "Apache-2.0"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
  end

  test do
    system "false"
  end
end

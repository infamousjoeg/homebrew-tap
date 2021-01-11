class CybrCli < Formula
  desc "CyberArk Privileged Access Security (PAS) Command-Line Interface (CLI)"
  homepage "https://github.com/infamousjoeg/cybr-cli"
  url "https://github.com/infamousjoeg/cybr-cli/releases/download/v0.0.4-alpha/cybr"
  sha256 "ff684d03ebcfedb80683cd7cbe00d7da4013b5d6ffbe996062e2803d8b11188c"
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

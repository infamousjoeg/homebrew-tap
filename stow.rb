class Stow < Formula
  desc "Command-line secrets manager for Summon (https://cyberark.github.io/summon) powered by the Keychain tools already available on macOS systems"
  homepage "https://github.com/infamousjoeg/stow"
  version "0.5.0"
  url "https://github.com/loteoo/ks/archive/refs/tags/#{version}.tar.gz"
  sha256 "95885c91c72f8a117c3aade8b189654e281ccf2fafab3d7646f5e13ee8f524a7"
  license "MIT"

  depends_on :macos
  uses_from_macos "bash"
  uses_from_macos "openssl"

  def install
    bin.install "stow"
  end

  def post_install
    ohai "stow has been installed 🎉"
    ohai "Please run \"stow init\" to create your first keychain."
  end

  def caveats
    <<~EOS
      You can setup basic completions by adding "source <(stow completion)" to your shell profile.
    EOS
  end

  test do
    assert_match "stow #{version}", shell_output("#{bin}/stow help")
  end
end

class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.9.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.15/ug-aarch64-apple-darwin.tar.gz"
      sha256 "b614f3de287e4cf9701c1c98534430672a14f356a77b719fe89b504ac9643bb4"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.15/ug-x86_64-apple-darwin.tar.gz"
      sha256 "0a9462a9a0899a86fb5516124691d215c6c9953f2ba3316163ebcc617a7df882"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.15/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eb14ac207138c9ada8216affd49bbd00688ac262831ba996cd0e40442b361d7a"
  end

  def install
    bin.install "ug"
  end
end

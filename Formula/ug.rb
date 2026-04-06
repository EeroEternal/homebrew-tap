class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.3/ug-aarch64-apple-darwin.tar.gz"
      sha256 "a596b346f137f3657ff464269517c3d7d0caab0cfd0d2d6eae62c9d2b4d7ee8b"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.3/ug-x86_64-apple-darwin.tar.gz"
      sha256 "bdcbab9cf1e6bde0fe0d5805595122e3199816b7f29ccc23e3fcc6664bc2cef8"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.3/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "427ba6ca47bc61105f3a2b4d0ff87ced610165c0fe8c477f85631285323bbcf5"
  end

  def install
    bin.install "ug"
  end
end

class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.9.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.13/ug-aarch64-apple-darwin.tar.gz"
      sha256 "005da1d797eb7ad4483faeadf4da6d5d15309dca177f2be99ee5f52241f3a10c"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.13/ug-x86_64-apple-darwin.tar.gz"
      sha256 "7067a20f7a3a1e290dc6e9c976e10b7648d287bcac57657f14af3be98072d2ef"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.13/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "028ca5371e8df093817faed16f93ba4cc21494e38d03f3fe3fa8d64919542f1c"
  end

  def install
    bin.install "ug"
  end
end

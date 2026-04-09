class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.2.0/ug-aarch64-apple-darwin.tar.gz"
      sha256 "69f889838052992f99164ecee19febdbdbb1a55cafc5df1b66326e2d48242606"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.2.0/ug-x86_64-apple-darwin.tar.gz"
      sha256 "7185b9cd1113696c113bff44f9462634813e7e273c3e2e0dfb4ede65f81ea286"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v1.2.0/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5403d60b1c43974105f90de9f1193408a0c4771718dc1978dd30c324b01bae18"
  end

  def install
    bin.install "ug"
  end
end

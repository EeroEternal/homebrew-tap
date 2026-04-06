class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.2/ug-aarch64-apple-darwin.tar.gz"
      sha256 "6c4428b6ce72b8d74be7b57b951227a75d4540b8cf4e099c7520c0e0f5207188"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.2/ug-x86_64-apple-darwin.tar.gz"
      sha256 "2ef76d2bcdbdd12a5f3dd97458b3e9a3ae6f9ca593d4c5905b5a7b00090804e9"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.2/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "206a2139d7cf3855bfce14292ad5fd37cda8c6a93ca445915e3edac8bf421fbb"
  end

  def install
    bin.install "ug"
  end
end

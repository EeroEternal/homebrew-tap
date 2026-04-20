class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "1.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.5.2/ug-aarch64-apple-darwin.tar.gz"
      sha256 "629c6e3c0e952f235579b1e5ff67dec3afc9012b713858bdc27bf51fca3e511f"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.5.2/ug-x86_64-apple-darwin.tar.gz"
      sha256 "59e9f06b7ea825d69b5401f0e6a6872ec7b8ee86a673aed00bf908597d6fc8c9"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v1.5.2/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "91cbf53a87b1ad53ea3dd5ae4bf24f61a8b79af05ddf2d4693ed39a311276043"
  end

  def install
    bin.install "ug"
  end
end

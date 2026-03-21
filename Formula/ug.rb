class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.9.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.17/ug-aarch64-apple-darwin.tar.gz"
      sha256 "de2f34f5cf1e664dd9d6914a5403113240badaa4a16dd57530fd5979a1418662"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.17/ug-x86_64-apple-darwin.tar.gz"
      sha256 "088064c53ad2281208eb629e8598a6eb9ff9eba27f57c66aeb5d87f6005b7d71"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.17/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f8afdc99c673e16479ff94011ba4e421aec92b6d3c0b7035e0c9f21ccd8fcc67"
  end

  def install
    bin.install "ug"
  end
end

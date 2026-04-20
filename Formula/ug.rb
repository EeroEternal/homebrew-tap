class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.5.1/ug-aarch64-apple-darwin.tar.gz"
      sha256 "e8a461b8f5d6d21ee4c2ff7d08a285d0e32586c3aadc3cdfb8eca584cd39be2f"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.5.1/ug-x86_64-apple-darwin.tar.gz"
      sha256 "53d8af61f5c1f306d3175e8ea8b175509b7d1d6a44b82aad99ee66cd5d9ba2f8"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v1.5.1/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ac893b45791fc49cd240494cea07392e5621ecb566eb59eb3aeafabeb72c4fdf"
  end

  def install
    bin.install "ug"
  end
end

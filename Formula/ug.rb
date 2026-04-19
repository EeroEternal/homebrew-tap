class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.5.0/ug-aarch64-apple-darwin.tar.gz"
      sha256 "601abfb862a3d8257b6ffc33f9a47eda0e070657987930e52e8ee4e7bf717e92"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.5.0/ug-x86_64-apple-darwin.tar.gz"
      sha256 "6321fa163c78b443ea278e3f063ac2962668abf634ee1b071acbe96e34207c7e"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v1.5.0/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c1970c2ee12795fee9364d85c942d72e28f7a7948ed35bd181589418b6786185"
  end

  def install
    bin.install "ug"
  end
end

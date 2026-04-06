class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.1/ug-aarch64-apple-darwin.tar.gz"
      sha256 "b079881431451029262ccc0383672851e4e8e6a49c01f688b3074cae8f495c4d"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.1/ug-x86_64-apple-darwin.tar.gz"
      sha256 "32c2277476a43b122d886a37397d4626dc35df55c0ded840a2417d074b6b083d"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.1/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d3e9d011d318b8654160c8dee9f6d62f20330302387b2dc1be90c1d52b150641"
  end

  def install
    bin.install "ug"
  end
end

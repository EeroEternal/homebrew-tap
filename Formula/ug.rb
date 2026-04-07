class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.0.0/ug-aarch64-apple-darwin.tar.gz"
      sha256 "22a09129fbfebcefd59f3e301ab8b13a8d50402ca36ca92d3f369ee14e292b96"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.0.0/ug-x86_64-apple-darwin.tar.gz"
      sha256 "5677ff30437d8e7bfb36473e015bb0ede3643aec54ea4ff9834e1bfcb5e57514"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v1.0.0/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9706a5aa8590a98bb3214daca4a483dc6b06d868e8159de6b9719e796074e6d2"
  end

  def install
    bin.install "ug"
  end
end

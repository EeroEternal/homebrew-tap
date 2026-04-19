class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.3.0/ug-aarch64-apple-darwin.tar.gz"
      sha256 "a767e11e1919d74583f838650c4102f4a101130289e82e0c9257f1ed3741ac30"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v1.3.0/ug-x86_64-apple-darwin.tar.gz"
      sha256 "c711733e7371435149cf092b27fe1ebd5ae8f47366f2ebb79119d2bce4c4935b"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v1.3.0/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0657176d5bee274f9e6e17dce8cbd6c89babb5a40cf5d9ee017dff37e783e018"
  end

  def install
    bin.install "ug"
  end
end

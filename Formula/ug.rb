class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.9.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.14/ug-aarch64-apple-darwin.tar.gz"
      sha256 "ef20dcb2d6003bf91b63eca37730ed748e7810d7f31c239a932737d20975307d"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.14/ug-x86_64-apple-darwin.tar.gz"
      sha256 "760d320b4e83c60c4d756058306e698ef347d114cf7ea06d4e97a59bcc8ec3d7"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v0.9.14/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "af1e676a0599d46b02e4ee96c9ff847294c798443d2006695a2fcdef837cb3c8"
  end

  def install
    bin.install "ug"
  end
end

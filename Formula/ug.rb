class Ug < Formula
  desc "UniGateway – lightweight LLM gateway with OpenAI/Anthropic compatibility"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-aarch64-apple-darwin.tar.gz"
      sha256 "29cb743e9a493ea62a35c6f0de78d533d02033467516704992d02955c00454a2"
    end
    on_intel do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-x86_64-apple-darwin.tar.gz"
      sha256 "7116717eb126dd948256748680835cdd0ca5dd9cae670affdd63783b0a7c60db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c8e4f4f6bf73c39125ccdea6bef943f28dcedd391e69d24d71793fc4dcb8fa8"
    end
  end

  def install
    bin.install "ug"
  end

  test do
    assert_match "ug", shell_output("#{bin}/ug --version")
  end
end

class Ug < Formula
  desc "UniGateway – lightweight LLM gateway with OpenAI/Anthropic compatibility"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-aarch64-apple-darwin.tar.gz"
      sha256 "65c5fcba92099a5dde97c6f7bcbe90986425b772fc83fd43af47f3a9492ea8ea"
    end
    on_intel do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-x86_64-apple-darwin.tar.gz"
      sha256 "83c9724f781b2830cc890829f3836f0b62fea2e2993a1bda825b7b1994a0d69b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abab4762ea3c5b242fbb664b0d90ddac5b9efc736969e55c3457e9e85c0cea59"
    end
  end

  def install
    bin.install "ug"
  end

  test do
    assert_match "ug", shell_output("#{bin}/ug --version")
  end
end

class Ug < Formula
  desc "UniGateway – lightweight LLM gateway with OpenAI/Anthropic compatibility"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-aarch64-apple-darwin.tar.gz"
      sha256 "4e58386016007f6558afc8d5ecc1d6f79563cfe0fce11b512a5e81711ecf82d6"
    end
    on_intel do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-x86_64-apple-darwin.tar.gz"
      sha256 "d5513432928c44fb60bebd42fcb20979e76d4c766812c826f12ad1ca25bbc172"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b330dc3c37e6beb7b80197f4aea1b6bf3e32cf39684f7d7a1f20bf4326d7f31d"
    end
  end

  def install
    bin.install "ug"
  end

  test do
    assert_match "ug", shell_output("#{bin}/ug --version")
  end
end

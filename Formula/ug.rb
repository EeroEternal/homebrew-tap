class Ug < Formula
  desc "UniGateway – lightweight LLM gateway with OpenAI/Anthropic compatibility"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-aarch64-apple-darwin.tar.gz"
      sha256 "d53cbf8120536d4a35b04e5a6934e4abcf2fcbc0e9f13772ee70b34c004ad490"
    end
    on_intel do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-x86_64-apple-darwin.tar.gz"
      sha256 "feba51bfbc0e178782cb9a0c5afedf6181422c26e70dd9fa3c291a698a7043ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EeroEternal/unigateway/releases/download/v#{version}/ug-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9adeddfc3424ce7bdd4f5fc723b6ee474bb58ef02db209753647f4d34785846f"
    end
  end

  def install
    bin.install "ug"
  end

  test do
    assert_match "ug", shell_output("#{bin}/ug --version")
  end
end

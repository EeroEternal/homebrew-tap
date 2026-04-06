class Ug < Formula
  desc "Lightweight, local-first LLM gateway for developers"
  homepage "https://github.com/EeroEternal/unigateway"
  version "0.10.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.4/ug-aarch64-apple-darwin.tar.gz"
      sha256 "7574f05c295b18fe95f5d05a06f6ae7966be8337026ac7720b3eae904546c92c"
    else
      url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.4/ug-x86_64-apple-darwin.tar.gz"
      sha256 "db1837b669cedba7101b3eba7815234bbc2b0552fe751beb1389f6f5a336d64b"
    end
  end

  on_linux do
    url "https://github.com/EeroEternal/unigateway/releases/download/v0.10.4/ug-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e42d1cc2d19ab76bb8e32ca8edcf164ef1be6096acad0302db3798768884b3d3"
  end

  def install
    bin.install "ug"
  end
end

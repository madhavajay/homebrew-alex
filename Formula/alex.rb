class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.24"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.24/alex-cli-0.1.24-macos-aarch64.tar.gz"
      sha256 "7bb7a01635bdd9c78eb91c13146eec5b6060f5cff94d16b0876e1e94e29091b1"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.24/alex-cli-0.1.24-macos-x86_64.tar.gz"
      sha256 "5403c4b65161fc0d4e8a052fb0bdbcc9f3fc10c3fcd6d90627f16848156a9bf7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.24/alex-cli-0.1.24-linux-x86_64.tar.gz"
      sha256 "e12954921d483a24894a43b3ef627c9dd99730328bf2fd786aa1dcd151a5f323"
    end
  end

  def install
    bin.install "alex", "alexandria"
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alex --version")
  end
end

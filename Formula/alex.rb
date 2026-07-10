class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.23"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.23/alex-cli-0.1.23-macos-aarch64.tar.gz"
      sha256 "849932ba500fe8ba4c71df25d7dcbd514726df257a04c10318af05569cc27772"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.23/alex-cli-0.1.23-macos-x86_64.tar.gz"
      sha256 "15015deb092a33017da3ab99204a3791e3efa2ce3e8dff36fe191d90a170f689"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.23/alex-cli-0.1.23-linux-x86_64.tar.gz"
      sha256 "b424cfa10d5f1aaa52d03955229130fede066c9a19ed6bee8839a44c45ad27c8"
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

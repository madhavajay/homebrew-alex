class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.21"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.21/alex-cli-0.1.21-macos-aarch64.tar.gz"
      sha256 "ad8d091999088a89d43ce4ae3273b5cc9e7012e58dbc2df8bd4c045054ce21fc"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.21/alex-cli-0.1.21-macos-x86_64.tar.gz"
      sha256 "f85aefc80c620cf5d734cbb5c596f52aa90eb773ab04a2c9c45b4c57f92bb7c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.21/alex-cli-0.1.21-linux-x86_64.tar.gz"
      sha256 "4f26990f5449a26e316420bf5b3e19ab2a384bfaacbec25b2753190ace108024"
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

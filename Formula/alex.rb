class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.30"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.30/alex-cli-0.1.30-macos-aarch64.tar.gz"
      sha256 "f507c2c48f1d29e2fc8454819e5dbf9831ba12d76ca3d0fc3137947c2f7a4854"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.30/alex-cli-0.1.30-macos-x86_64.tar.gz"
      sha256 "a4990ece25295c30a267d16545669e5729f3c3df33cf7a6ea7dc8f8ef049d01c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.30/alex-cli-0.1.30-linux-x86_64.tar.gz"
      sha256 "658990edba800d16f752c384adfc92d38e05d84d01b416561c385ef10d2d5e05"
    end
  end

  def install
    bin.install "alex"
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alex --version")
  end
end

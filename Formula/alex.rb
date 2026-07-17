class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.27"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.27/alex-cli-0.1.27-macos-aarch64.tar.gz"
      sha256 "986bb53860d57e81de325780d18a25a0060878d2ff110c48b11e88b6ed1469e4"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.27/alex-cli-0.1.27-macos-x86_64.tar.gz"
      sha256 "cb833f36df7e9556e44e719b5c5495b1e03d926d25cd820c0fb37364e8622312"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.27/alex-cli-0.1.27-linux-x86_64.tar.gz"
      sha256 "2cc9a9e896b57e184e342270bdd3d64c9a26c524202e1f3e934c06e8bd09a22e"
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

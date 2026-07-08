class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.18"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.18/alex-cli-0.1.18-macos-aarch64.tar.gz"
      sha256 "edbeb5607b52d5c2a027184c5881b52f71c8509c0341412db41bdcba39de80b7"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.18/alex-cli-0.1.18-macos-x86_64.tar.gz"
      sha256 "599924f428d61644e406e3ccf4f2d10d089abc423c00781b6c365e84f6d31a4c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.18/alex-cli-0.1.18-linux-x86_64.tar.gz"
      sha256 "11476958c2edfcd3a9587591a870420d7eee53020dce05823d6e4ff796e5ea84"
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

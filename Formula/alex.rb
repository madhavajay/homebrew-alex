class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.28"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.28/alex-cli-0.1.28-macos-aarch64.tar.gz"
      sha256 "e4fe606283a85e387eb973b7ef7b25bb0bed03a42c2112cc6cd16aa54fdc8e1f"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.28/alex-cli-0.1.28-macos-x86_64.tar.gz"
      sha256 "981ded1bba7dba4544b1a62162930340004e548782376e134ece05a5a161fcb5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.28/alex-cli-0.1.28-linux-x86_64.tar.gz"
      sha256 "45335037a77f16f0bca5dfa48c5a2ffb30ee5b93a295fcac7678798eeeaae0b4"
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

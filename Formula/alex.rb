class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.19"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.19/alex-cli-0.1.19-macos-aarch64.tar.gz"
      sha256 "e66818c609f23d945020c62952f438620e57e8af5c7b17bba9b38a83859c1119"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.19/alex-cli-0.1.19-macos-x86_64.tar.gz"
      sha256 "8b37ed81894fb7cadfe8309377c68123514bdcb61876bb3a6d8b990b8290c9da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.19/alex-cli-0.1.19-linux-x86_64.tar.gz"
      sha256 "c37fd102545108440cbfc2da5f1dd369fbb9da6962f9b14f25cf97a9d7007b21"
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

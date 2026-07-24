class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.31"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.31/alex-cli-0.1.31-macos-aarch64.tar.gz"
      sha256 "0a76c1444c037a92415966f35ced20d46f7a5f5b933b7000ab4a81b884feec1a"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.31/alex-cli-0.1.31-macos-x86_64.tar.gz"
      sha256 "57c1fca9841cf3ab4a584c88726061dc5aa9c74dabf080d4deccad38455e891c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.31/alex-cli-0.1.31-linux-x86_64.tar.gz"
      sha256 "2bf649738752464f49f857ccf45ca9503113e42633b530f782f352ba72bf47bb"
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

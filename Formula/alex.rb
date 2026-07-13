class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.25"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.25/alex-cli-0.1.25-macos-aarch64.tar.gz"
      sha256 "2bb5f353a7db998b6f305b780031eeca0b6716bfa56fe9590dee67f8c6f703aa"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.25/alex-cli-0.1.25-macos-x86_64.tar.gz"
      sha256 "4da4b1dbd507019870eb1485d3c58e4e84b506e35df70993e14cdae6754eae3e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.25/alex-cli-0.1.25-linux-x86_64.tar.gz"
      sha256 "1a4e644557c84c62470cd7d5ea4e5603851b763080a7be41b24671ca75ec4841"
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

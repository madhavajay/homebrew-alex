class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.26"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.26/alex-cli-0.1.26-macos-aarch64.tar.gz"
      sha256 "268dc388fe11dff748b260144d9ecac4c5d7f3ba655c9299ddd4be4e03e2130b"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.26/alex-cli-0.1.26-macos-x86_64.tar.gz"
      sha256 "17e95fe1eca9e91b740197cfdb904066004b30b1f427d0c16a6078e9a8984e39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.26/alex-cli-0.1.26-linux-x86_64.tar.gz"
      sha256 "bfca91b15b204efa8da260cd08d9bac1176fcd1a07edbfdb8e949be7f28a8fe4"
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

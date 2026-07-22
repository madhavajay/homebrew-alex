class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.29"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.29/alex-cli-0.1.29-macos-aarch64.tar.gz"
      sha256 "1a5addc0c217093ecbd24e365b0003bdb8aec3e230eaa59d6142fac1ba743cd6"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.29/alex-cli-0.1.29-macos-x86_64.tar.gz"
      sha256 "f45327495a7d28420f8a284059ac46e1ecd412beb3705e85bf4c7317f942ddd7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.29/alex-cli-0.1.29-linux-x86_64.tar.gz"
      sha256 "8faf0649e7f3adca69c8d69402b24c9368ea8ae395e57447debc07eaf0d3c3e3"
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

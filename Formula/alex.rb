class Alex < Formula
  desc "Local LLM subscription router: credential vault, proxy, trace capture"
  homepage "https://github.com/madhavajay/alex"
  version "0.1.22"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.22/alex-cli-0.1.22-macos-aarch64.tar.gz"
      sha256 "654350a086f9aaab1a5507c9ec502ac9c142eac6bd7a46273359efb84b6bcdca"
    end

    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.22/alex-cli-0.1.22-macos-x86_64.tar.gz"
      sha256 "720686310c6aa40722a7e386285f5398ced5c926cf2c0ca7bbb3e1d0ce9b9661"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/madhavajay/alex/releases/download/v0.1.22/alex-cli-0.1.22-linux-x86_64.tar.gz"
      sha256 "4d64d8188813b5619ffe11112066deeffacd47562da9b208fc8ae6458eb2b04c"
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

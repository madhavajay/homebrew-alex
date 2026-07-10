cask "alexandria" do
  version "0.1.23"
  sha256 "7c09a7cc02d23ac7609ace0e7430f16ad2d2bc128a7fc9ae7f8d6768b8dd18cd"

  url "https://github.com/madhavajay/alex/releases/download/v0.1.23/AlexandriaBar-0.1.23.dmg"
  name "Alexandria"
  desc "Menu bar app for the Alex local LLM subscription router"
  homepage "https://github.com/madhavajay/alex"

  depends_on formula: "madhavajay/alex/alex"

  app "AlexandriaBar.app"

  uninstall quit: "com.madhavajay.alexandria-macos"

  livecheck do
    url :stable
    strategy :github_latest
  end
end

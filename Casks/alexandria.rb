cask "alexandria" do
  version "0.1.25"
  sha256 "b05b726acbfa5545190e3c25613d747873640404fff4aae5ea5d6bc28f5cc5fe"

  url "https://github.com/madhavajay/alex/releases/download/v0.1.25/AlexandriaBar-0.1.25.dmg"
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

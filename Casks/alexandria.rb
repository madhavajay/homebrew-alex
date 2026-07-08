cask "alexandria" do
  version "0.1.18"
  sha256 "0888267709aa74969b2a0dd26db3afbcc3d8f3071a42bd5d2f290fda5304f812"

  url "https://github.com/madhavajay/alex/releases/download/v0.1.18/AlexandriaBar-0.1.18.dmg"
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

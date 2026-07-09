cask "alexandria" do
  version "0.1.21"
  sha256 "6f93bd153fb10e4a2d066d1b9112853c89e34642952677566382847647a61d12"

  url "https://github.com/madhavajay/alex/releases/download/v0.1.21/AlexandriaBar-0.1.21.dmg"
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

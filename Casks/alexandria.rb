cask "alexandria" do
  version "0.1.19"
  sha256 "e875fb8b132a71f3c573e96feed8ce38664f3619df1ae3d09ccfa80cefb22409"

  url "https://github.com/madhavajay/alex/releases/download/v0.1.19/AlexandriaBar-0.1.19.dmg"
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

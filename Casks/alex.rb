cask "alex" do
  version "0.1.31"
  sha256 "fb3995751a0674ff89b478014b5df6ab8fd4f7855e948fdda22a8c30f86d072a"

  url "https://github.com/madhavajay/alex/releases/download/v0.1.31/Alex-0.1.31.dmg"
  name "Alex"
  desc "Menu bar app for the Alex local LLM subscription router"
  homepage "https://github.com/madhavajay/alex"

  depends_on formula: "madhavajay/alex/alex"

  app "Alex.app"

  uninstall quit:   "com.madhavajay.alex",
            delete: "/Applications/Alex.app"

  zap trash: [
    "~/Library/Application Support/com.madhavajay.alex",
    "~/Library/Caches/com.madhavajay.alex",
    "~/Library/Preferences/com.madhavajay.alex.plist",
    "~/Library/HTTPStorages/com.madhavajay.alex",
    "~/Library/Saved Application State/com.madhavajay.alex.savedState",
  ]

  livecheck do
    url :stable
    strategy :github_latest
  end
end

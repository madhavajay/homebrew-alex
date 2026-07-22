cask "alex" do
  version "0.1.29"
  sha256 "994bc0073e59f517efefc5964516cd30536c1ab023ff05ead8ea00ba71b9032f"

  url "https://github.com/madhavajay/alex/releases/download/v0.1.29/Alex-0.1.29.dmg"
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

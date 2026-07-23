cask "alex" do
  version "0.1.30"
  sha256 "893d1366c6932b300c386d127e4e12a04edc12af9da2e876fad69aeb84421138"

  url "https://github.com/madhavajay/alex/releases/download/v0.1.30/Alex-0.1.30.dmg"
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

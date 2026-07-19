cask "alexandria" do
  version "0.1.28"
  sha256 "49ace0d3958ce93818de43b0586099a4b1ce3fc4102e1a60c2752eec86d0f721"

  url "https://github.com/madhavajay/alex/releases/download/v0.1.28/Alex-0.1.28.dmg"
  name "Alex"
  desc "Menu bar app for the Alex local LLM subscription router"
  homepage "https://github.com/madhavajay/alex"

  depends_on formula: "madhavajay/alex/alex"

  app "Alex.app"

  # Tolerate the app already being gone (replaced by a direct DMG install, or
  # the pre-rename AlexandriaBar.app): quitting a not-running bundle id is a
  # no-op and delete/trash do not error on missing paths.
  uninstall quit:   "com.madhavajay.alex",
            delete: [
              "/Applications/Alex.app",
              "/Applications/AlexandriaBar.app",
            ]

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

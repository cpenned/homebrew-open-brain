cask "open-brain" do
  version "2026.11.17.2313"
  sha256 "6c3a8fcb595888152d6b4e38774191d6bd14af3688b60624f233f0d990803b26"

  url "https://github.com/cpenned/homebrew-open-brain/releases/download/v#{version}/Open-Brain-#{version}.zip"
  name "Open Brain"
  desc "Native Mac app for Open Brain"
  homepage "https://github.com/cpenned/homebrew-open-brain"

  depends_on macos: ">= :tahoe"

  app "Open Brain.app"

  uninstall quit: "com.openbrain.mac"

  zap trash: [
    "~/Library/Application Support/Open Brain",
    "~/Library/Application Support/OpenBrain",
    "~/Library/Caches/BookCovers",
    "~/Library/Caches/com.openbrain.mac",
    "~/Library/Preferences/com.openbrain.mac.plist",
  ]
end

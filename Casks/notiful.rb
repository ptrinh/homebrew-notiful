cask "notiful" do
  version "1.1.3"
  sha256 "909a9cb6aaff935c6f04dd8ad71f8e733ff94d51d6508ac04d8d242446a54a0a"

  url "https://github.com/ptrinh/Notiful/releases/download/v#{version}/Notiful.zip"
  name "Notiful"
  desc "Menu-bar app that extracts OTPs from notifications and runs shell commands on them"
  homepage "https://github.com/ptrinh/Notiful"

  depends_on macos: :ventura

  app "Notiful.app"

  caveats <<~EOS
    Notiful needs Full Disk Access to read the notification database:
      System Settings -> Privacy & Security -> Full Disk Access -> enable Notiful, then relaunch.
  EOS

  zap trash: [
    "~/Library/Application Support/Notiful",
    "~/Library/Preferences/com.notiful.app.plist",
  ]
end

cask "nocaps" do
  version "1.9.1"
  sha256 "6af8aef6e5e9a6dd31ed60c1f75c58c79f33b3790bb52f7dab9ba5d5f4a57fce"

  url "https://github.com/phucisstupid/nocaps/releases/download/v#{version}/NoCaps.zip"
  name "NoCaps"
  desc "Tap Caps Lock for Escape, hold it for Control"
  homepage "https://github.com/phucisstupid/nocaps"

  depends_on macos: :ventura

  app "NoCaps.app"

  uninstall quit: "app.nocaps.NoCaps",
            login_item: "NoCaps"
end

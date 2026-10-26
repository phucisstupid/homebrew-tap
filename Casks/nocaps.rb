cask "nocaps" do
  version "1.9"
  sha256 "2ace1f22c4a19be5eb2cd26835cfaf26dc3bca3394a7e3e9a95f64f19249f963"

  url "https://github.com/phucisstupid/nocaps/releases/download/v#{version}/NoCaps.zip"
  name "NoCaps"
  desc "Tap Caps Lock for Escape, hold it for Control"
  homepage "https://github.com/phucisstupid/nocaps"

  depends_on macos: :ventura

  app "NoCaps.app"

  uninstall quit: "app.nocaps.NoCaps",
            login_item: "NoCaps"
end

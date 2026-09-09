cask "twen" do
  version "0.2.1"
  sha256 "8fe98f7a4bf8c3703f331813f7265d8d76ae896b03792553a430dee14cd4f444"

  url "https://github.com/kannwism/twen/releases/download/v#{version}/twen-#{version}.zip"
  name "twen"
  desc "Menu bar timer for the 20-20-20 rule that gently desaturates the screen"
  homepage "https://github.com/kannwism/twen"

  depends_on macos: :ventura

  app "twen.app"

  zap trash: [
    "~/Library/Preferences/dev.twen.plist",
  ]

  caveats <<~EOS
    twen is not yet notarized. If macOS blocks the first launch, allow it in
    System Settings > Privacy & Security, or reinstall without quarantine:
      brew reinstall --cask --no-quarantine twen
  EOS
end

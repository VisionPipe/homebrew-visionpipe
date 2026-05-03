cask "visionpipe" do
  version "0.3.8"
  sha256 "125bf45b14d1f93ff6b1b0db002f6ed66a129c82f1cf19e06caf79ddc697e822"

  url "https://github.com/VisionPipe/visionpipe/releases/download/v#{version}/VisionPipe_#{version}_aarch64.dmg"
  name "VisionPipe"
  desc "Screenshot to AI in one keystroke"
  homepage "https://github.com/VisionPipe/visionpipe"

  depends_on macos: ">= :ventura"

  app "VisionPipe.app"

  zap trash: [
    "~/Library/Application Support/com.visionpipe.desktop",
    "~/Library/Caches/com.visionpipe.desktop",
    "~/Library/Preferences/com.visionpipe.desktop.plist",
  ]
end

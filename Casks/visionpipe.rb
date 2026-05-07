cask "visionpipe" do
  version "0.10.2"
  sha256 "c0b3763854ebdaf30e52cfa28d4bbd93d43d752b6b5a0fb8378dfe27d5655b18"

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

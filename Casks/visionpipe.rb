cask "visionpipe" do
  version "0.3.4"
  sha256 "01a4ca9fb4addd6f9ef3ccbc45bf20ec20d3b51418d90b9d19d31b7d8c24423d"

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

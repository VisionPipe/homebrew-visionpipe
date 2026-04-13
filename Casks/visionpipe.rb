cask "visionpipe" do
  version "0.1.0"
  sha256 "032e88dad5506930e8682b22640dbde7647e85338cc86fc28daeb23559a97159"

  url "https://github.com/VisionPipe/visionpipe/releases/download/v#{version}/VisionPipe_#{version}_aarch64.dmg"
  name "VisionPipe"
  desc "Screenshot to AI in one keystroke"
  homepage "https://github.com/VisionPipe/visionpipe"

  depends_on macos: ">= :ventura"

  app "VisionPipe.app"

  zap trash: [
    "~/Library/Application Support/ai.visionpipe.app",
    "~/Library/Caches/ai.visionpipe.app",
    "~/Library/Preferences/ai.visionpipe.app.plist",
  ]
end

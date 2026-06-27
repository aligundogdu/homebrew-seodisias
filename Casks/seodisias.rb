cask "seodisias" do
  version "0.1.8"

  if Hardware::CPU.arm?
    sha256 "b6c940cb70fcd5e9289286ffe017aee598afa0fcfe1a81cc7dcba389ab61e3d2"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "8f54e60f04af945836f384af2b585b5558b1cfc4bc979856ef3a5c1948f00295"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-amd64.dmg"
  end

  name "Seodisias"
  desc "SEO analysis desktop application"
  homepage "https://seodisias.com"
  app "Seodisias.app"

  zap trash: [
    "~/Library/Application Support/Seodisias",
    "~/Library/Preferences/com.aligundogdu.seodisias.plist",
    "~/Library/Caches/com.aligundogdu.seodisias",
  ]
end

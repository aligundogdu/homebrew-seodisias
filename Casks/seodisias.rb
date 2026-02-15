cask "seodisias" do
  version "0.1.0"

  if Hardware::CPU.arm?
    sha256 "aa252adbd41034d2a8e7c318c176ce0027f5254ec65e38a7f360948f533da9ee"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "aadc5594c0141b0581fa679bc07d624788d22567815775bc9cd22fb5ea234f54"
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

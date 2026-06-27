cask "seodisias" do
  version "0.1.9"

  if Hardware::CPU.arm?
    sha256 "84ad8cfdcb3ba2f3918c8532531fdcb1cf8b5c25e7b644c8667a286333bab770"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "fe53a848c4d385c1268d3f114c9fca90a652d9d089709c6a9630fb6bd188703f"
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

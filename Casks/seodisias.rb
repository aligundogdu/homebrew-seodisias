cask "seodisias" do
  version "0.1.6"

  if Hardware::CPU.arm?
    sha256 "e075358f37d9c8063239a31f81ce69db56563af028f72f39c8a23dd17c3b444a"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "60f3f0b1d4e15bae43c8ef1d24da42533fec04af40e02120abcf1be6bcc050dd"
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

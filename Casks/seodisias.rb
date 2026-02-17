cask "seodisias" do
  version "0.1.2"

  if Hardware::CPU.arm?
    sha256 "3701878ccef6760b80cd4d6451756680d52b176a0169f19a843951a48ab53a0e"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "cb4336d576df162ad3ec82d0188db9dea2d8b8174f8bb35aa1469af0e84e76f5"
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

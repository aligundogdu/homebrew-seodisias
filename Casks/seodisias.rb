cask "seodisias" do
  version "0.1.3"

  if Hardware::CPU.arm?
    sha256 "7be01d318ba953286e98959159f2fac83465bde52cb7e4b315fd028179c89109"
    url "https://github.com/aligundogdu/seodisias-releases/releases/download/v#{version}/seodisias-darwin-arm64.dmg"
  else
    sha256 "71277425e0e00bdce6813740223c014a977c3f8f7f259f90222c9952424cdd49"
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

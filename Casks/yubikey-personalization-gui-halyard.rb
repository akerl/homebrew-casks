cask 'yubikey-personalization-gui-halyard' do
  version '3.1.25'
  sha256 '45b270edd68c03e6470fe1bcb8dee79dad37c454b1e679838233041feb7ad23d'

  url "https://developers.yubico.com/yubikey-personalization-gui/Releases/yubikey-personalization-gui-#{version}.pkg"
  name 'YubiKey Personalization GUI'
  homepage 'https://www.yubico.com/products/services-software/personalization-tools/use/'

  pkg "yubikey-personalization-gui-#{version}.pkg"

  uninstall pkgutil: 'com.yubico.YKPersonalization'
end

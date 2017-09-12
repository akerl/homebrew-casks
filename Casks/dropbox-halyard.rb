cask 'dropbox-halyard' do
  version :latest
  sha256 :no_check

  url 'https://www.dropbox.com/download?plat=mac&full=1'
  homepage 'https://www.dropbox.com/'
  name 'Dropbox'

  app 'Dropbox.app'
end

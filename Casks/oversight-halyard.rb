cask 'oversight-halyard' do
  version '1.1.2'
  sha256 '4d930136f7e99880f7fb98cd195c47ee69b011c726be1e860ee4b43546386bd5'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/OverSight_#{version}.zip"
  name 'OverSight'
  homepage 'https://objective-see.com/products/oversight.html'

  installer manual: "#{staged_path}/OverSight_Installer.app/Contents/MacOS/OverSight_Installer"

  uninstall script: {
                      executable: "#{staged_path}/OverSight_Installer.app/Contents/MacOS/OverSight_Installer",
                      args:       ['-uninstall'],
                    }

  zap delete: [
                '~/Library/Preferences/com.objective-see.OverSight.plist',
                '~/Library/Application Support/Objective-See/OverSight',
                '~/Library/Caches/com.objective-see.OverSightHelper',
              ]
end
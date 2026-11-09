cask "hutchbar" do
  version "0.1.0"
  sha256 "068d134ccfd5e0c0e62e86e4e7c490b8a5826e4947aabf6d0f665da513f9289b"

  url "https://github.com/Code-oclock/hutchbar/releases/download/v#{version}/Hutchbar-#{version}.zip"
  name "Hutchbar"
  desc "Menu bar cockpit for coding agents"
  homepage "https://github.com/Code-oclock/hutchbar"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Hutchbar.app"

  # The app is ad-hoc signed and not notarized (see README). Installing it through this
  # tap is an explicit choice to trust it, so drop the quarantine flag.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Hutchbar.app"]
  end

  zap trash: [
    "~/Library/Application Support/hutchbar",
    "~/Library/Preferences/io.github.code-oclock.hutchbar.plist",
  ]
end

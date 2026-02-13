class JamfPackageUpdater < Formula
  desc "Safely update Jamf Pro packages in place without breaking policies"
  homepage "https://github.com/photon-hq/jamf-package-updater"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/photon-hq/jamf-package-updater/releases/download/v#{version}/jamf-package-updater-aarch64-apple-darwin"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/photon-hq/jamf-package-updater/releases/download/v#{version}/jamf-package-updater-x86_64-unknown-linux-gnu"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install Dir.glob("jamf-package-updater*").first => "jamf-package-updater"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/jamf-package-updater --help")
  end
end

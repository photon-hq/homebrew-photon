class JamfPackageUpdater < Formula
  desc "Safely update Jamf Pro packages in place without breaking policies"
  homepage "https://github.com/photon-hq/jamf-package-updater"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/photon-hq/jamf-package-updater/releases/download/v0.1.0/jamf-package-updater-aarch64-apple-darwin"
      sha256 "85d7ee851b243b3564b1ef931d06658a4adbfcd5d49f5e31539531f0faf4ccf3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/photon-hq/jamf-package-updater/releases/download/v0.1.0/jamf-package-updater-x86_64-unknown-linux-gnu"
      sha256 "c207066fbec02e44e7e3cb877d9f2674a58eac3298b8f6b93c697e27795254b4"
    end
  end

  def install
    bin.install Dir.glob("jamf-package-updater*").first => "jamf-package-updater"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/jamf-package-updater --help")
  end
end

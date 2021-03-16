class Measures < Formula
  desc "Download Ephemerides and Geodetic measures casadata for casacore"
  homepage "https://cartavis.github.io/"
  url "file:///dev/null"
  version "21.3.16"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "GPL-2.0-only"

  depends_on "svn"

  def install
    mkdir "/usr/local/Cellar/measures/data" do
      system "svn co https://svn.cv.nrao.edu/svn/casa-data/distro/ephemerides/"
      system "svn co https://svn.cv.nrao.edu/svn/casa-data/distro/geodetic/"
    end
  end

  test do
    system "false"
  end
end

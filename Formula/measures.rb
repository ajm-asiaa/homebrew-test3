class Measures < Formula
  desc "Download Ephemerides and Geodetic measures casadata for casacore"
  homepage "https://cartavis.github.io/"
  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "NOASSERTION"

  depends_on "svn"

  def install
    args << "/usr/local/Cellar/measures/data"
    system "mkdir -p /usr/local/Cellar/measures/data/ephemerides"
    system "mkdir -p /usr/local/Cellar/measures/data/geodetic"
    system "svn co https://svn.cv.nrao.edu/svn/casa-data/distro/ephemerides/ ${args}/ephemerides"
    system "svn co https://svn.cv.nrao.edu/svn/casa-data/distro/geodetic/ ${args}/geodetic"
    system "rm -r /usr/local/Cellar/measures/data/ephemerides/splatalogue.db"
    system "rm -r /usr/local/Cellar/measures/data/ephemerides/SplatDefault.tbl"
  end

  test do
    system "false"
  end
end

class UpsideDown < Formula
  desc "command line interface for upside down"
  homepage "https://github.com/upside-down-swift/upside-down"
  url "https://github.com/upside-down-swift/cli.git", :tag => "0.1.0", :revision => "c160d6de83c3cfab770bb21e799d56b64e1f7838"
  head "https://github.com/upside-down-swift/cli.git", :shallow => false
  version "0.1.0"

  depends_on :xcode => ["10.0", :build]
  depends_on "buildkit" => "0.5.0"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/upside-down" "--help"
  end
end

require "formula"

class Gtsql < Formula
  homepage "https://github.com/aytee17/gtfs-to-sqlite"
  url "https://github.com/aytee17/gtfs-to-sqlite/releases/download/v0.0.1-beta/gtfs-to-sqlite-0.0.1.zip"
  sha256 "4fd6e57ce509c09cddd534d751c281a461bbc10871371205d07a65e3ea921d83"

  def install
  	inreplace "gtfs-to-sqlite-0.0.1/brew/gtsql", "##PREFIX##", "#{prefix}"
  	prefix.install "gtfs-to-sqlite-0.0.1-all.jar"
  	bin.install "gtfs-to-sqlite-0.0.1/brew/gtsql"
  end
end

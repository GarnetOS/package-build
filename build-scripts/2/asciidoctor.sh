ruby
if [ -z "$old" ];
then
   exit
fi
wget https://github.com/asciidoctor/asciidoctor/archive/v2.0.16/asciidoctor-2.0.16.tar.gz

tar -xvf asciidoctor-2.0.16.tar.gz
cd asciidoctor-2.0.16
gem build asciidoctor.gemspec
gem install asciidoctor-2.0.16.gem &&
install -vm644 man/asciidoctor.1 /usr/share/man/man1
cd ..
rm asciidoctor-2.0.16.tar.gz
rm -rf asciidoctor-2.0.16
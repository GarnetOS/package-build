alsa-lib
if [ -z "$old" ];
then
   exit
fi
wget https://www.alsa-project.org/files/pub/tools/alsa-tools-1.2.5.tar.bz2

tar -xvf alsa-tools-1.2.5.tar.bz2
cd alsa-tools-1.2.5.
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
bash -e
rm -rf qlo10k1 Makefile gitcompile
for tool in *
do
  case $tool in
    seq )
      tool_dir=seq/sbiload
    ;;
    * )
      tool_dir=$tool
    ;;
  esac

  pushd $tool_dir
    ./configure --prefix=/usr
    make
    as_root make install
    as_root /sbin/ldconfig
  popd

done
unset tool tool_dir
exit
cd ..
rm alsa-tools-1.2.5.tar.bz2
rm -rf alsa-tools-1.2.5.
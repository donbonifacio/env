SCALA="scala-2.11.0-M7"
mkdir ~/bin
mkdir ~/bin/$SCALA/


if [ ! -f $SCALA.tgz ]; then
  wget http://www.scala-lang.org/files/archive/$SCALA.tgz
fi

tar xzvf $SCALA.tgz ~/bin/$SCALA/

gunzip $SCALA.tgz
tar xf $SCALA.tar

cp -R $SCALA/ ~/bin
ln -s ~/bin/$SCALA ~/bin/scala

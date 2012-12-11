
curl -L https://get.rvm.io | bash -s stable
rvm install 1.9.3

# install ruby
rvm install 1.9.3 --with-openssl-dir=/usr/local

# create a gemset 
rvm gemset create project

# go to project and configure rvm
echo "rvm 1.9.3@project" > .rvmrc

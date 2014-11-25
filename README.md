# Setting up dev environment for OSX 10.9 Mavericks.

Get started by intalling the command line tools. Open your terminal & paste the below command.
~~~
$ xcode-select --install
~~~

Install Hombrew! In the terminal paste the following line (without the \$), hit Enter, and follow the steps on the screen:
~~~~
$ ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
~~~~

One thing we need to do is tell the system to use programs installed by Hombrew (in /usr/local/bin) rather than the OS default if it exists. We do this by adding /usr/local/bin to your $PATH environment variable: 
~~~
$ echo 'export PATH="/usr/local/bin:\$PATH"' >> ~/.bash_profile

Open a new terminal tab with Cmd+T (you should also close the old one), then run the following command to make sure everything works:
~~~
$ brew doctor
~~~

To update Homebrew's directory of formulae, run:
~~~
$ brew update
~~~

Install git using Homebrew
~~~
$ brew install git
~~~


We will install MySQL using Homebrew, which will also install some header files needed for MySQL bindings in different programming languages (MySQL-Python for one).
To install, run:
~~~
$ brew update # Always good to do
$ brew install mysql
~~~
As you can see in the ouput from Homebrew, before we can use MySQL we first need to set it up with:
~~~
$ unset TMPDIR
$ mkdir /usr/local/var
$ mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tm
~~~

Install python using home-brew. This will also install **Pip** & its dependency **Distribute**
~~~
$ brew install python
~~~

10. Add these lines to `.bash_profile`
`PATH=/usr/local/share/python:$PATH`
`export PATH`

11. Install Virtual Environment using below command
`$ pip install virtualenv` 

12. Create an environment. This will create a virtual environment in your home directory
`$ virtualenv venv`

13. Activate virtual environment
`$ source ~/venv/bin/activate`

14. Install CASK ROOM
`$ brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`
`$ brew install caskroom/cask/brew-cask`

15. Install Windows Tiling Manager **Amethyst**
`brew cask install amethyst`

16. `$ brew cask install iterm2`


~~~~
Rwanda
~~~~


brew install wget


brew tap homebrew/boneyard
brew bundle


# Vim Setup
git clone https://github.com/sagarrakshe/dotvim.git ~/.vim
./install.sh

curl -L http://install.ohmyz.sh | sh

git config --global user.name "aadesh"
git config --global user.email aadesh.mistry@gmail.com

# NPM INSTALL
mkdir ~/.npm-packages

Open .zshrc and add these lines
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES"

export MANPATH="/usr/local/man:$MANPATH:$NPM_PACKAGES/share/man”

touch .npmrc
prefix=/Users/Aadesh/.npm-packages   

git clone git://github.com/joyent/node.git
./configure --prefix=/Users/Aadesh/.node-binaries  
make install

git clone git://github.com/isaacs/npm.git
cd npm
./configure --prefix=/Users/Aadesh/.node-binaries  ls

make install brew 

sudo gem update --system && gem install compass

sudo gem install sass

npm install -g grunt-contrib-compass


——
dnsmasq
This is a great little tool to that allows us to use wildcard subdomain names.
With the default apache settings, you can add as many sites as you like in subfolders of the web root. You can have sites like this:
http://home.dev/client1
http://home.dev/client2
http://home.dev/client3
However, that creates a problem. When you have each site in a folder, it’s more difficult to manage the settings for each site. Each one must then have a different absolute root. The solution is to create a subdomain for each site, and use URLs like these:
http://client1.dev
http://client2.dev
http://client3.dev
We can accomplish this by placing all three sites in our /private/etc/hosts file, but then we need to keep adding entries every time we add a new site. dnsmasq allows us to do this by interrupting each request that ends with.dev and forwarding it to a designated IP address (127.0.0.1 in our case).
To install dnsmasq, we use the previously installed Homebrew. The following commands will install dnsmasq, configure it to point all requests to the .dev top-level domain to our local machine, and make sure it starts up and runs all of the time.
brew install dnsmasq
cd $(brew --prefix)
mkdir etc
echo 'address=/.dev/127.0.0.1' > etc/dnsmasq.conf
sudo cp -v $(brew --prefix dnsmasq)/homebrew.mxcl.dnsmasq.plist /Library/LaunchDaemons
sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
sudo mkdir /etc/resolver
sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/dev'
We’re now done with dnsmasq, and if all goes well, you’ll never need to think about it again. Now, to get Apache going.

http://mallinson.ca/osx-web-development/



brew cask install sequel-pro
Install MYSQL GUI

brew cask install github

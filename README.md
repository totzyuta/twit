# twit

#### CLI Tool Simply to Tweet!

### Just 4 Steps to Start

##### (1) Clone this repository.

```
$ cd ~/
$ git clone https://github.com/totzYuta/twit.git
```

##### (2) Run setting file of your twitter account and enter your PIN

```
$ cd ./twit/
$ bundle install
$ ruby setting_twit.rb
```

##### (3) Set the path to the commands

```
$ sudo ln -s /Users/YOUR_USER_NAME/twit/twit /usr/bin/
$ sudo ln -s /Users/YOUR_USER_NAME/twit/twit_setting_files /usr/bin/
```

※ Set absolute path to twit file


##### (4) Just to tweet!

```
$ twit "I'm tweeting from terminal!" YOUR_ACCOUNT_ID_WITHOUT@
```

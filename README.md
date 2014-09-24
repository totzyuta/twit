# twit

#### CLI Tool Simply Just to Tweet!

### Just 4 Steps to Start

##### (1) Clone this repository.

```
$ cd ~/
$ git clone https://github.com/totzYuta/twit.git
```

##### (2) Run setting file of your twitter account and enter your PIN

```
$ cd ./twit/
$ ruby setting_twit.rb
```

##### (3) Set the path to the commands

```
$ sudo ln -s /Users/YOUR_USER_NAME/twit/setting_twit.rb /usr/bin/
$ sudo ln -s /Users/YOUR_USER_NAME/twit/setting.rb /usr/bin/
$ sudo ln -s /Users/YOUR_USER_NAME/twit/twit /usr/bin/
```

※ Set absolute path to twit file


##### (4) Just to tweet!

```
$ twit "I'm tweeting from terminal!"
```

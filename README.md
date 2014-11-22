# twiterm

#### CLI Tool Simply to Tweet!

```
$ twit t "I tweet from terminal." yutaTotz
♪  Tweeted
```


### Just 3 Steps to Start

##### (1) Clone this repository in HOME directory.

```
$ cd ~/
$ git clone https://github.com/totzYuta/twiterm.git
```


##### (2) Run setting file and enter your PIN

```
$ cd ./twiterm/
$ sh setup.sh
```


##### (3) Just to tweet!

```
$ twit tweet "Tweet from terminal :)" YOUR_ACCOUNT_ID_WITHOUT@
```


### Commands

- Tweet

```
$ twit tweet "tweet" yutaTotz
$ twit t "tweet" yutaTotz
```

- Show a list of accounts

```
$ twit list
$ twit l
```


- Add an account

```
$ twit setup
$ twit s
```

- Set default account (you can tweet without account id)

```
$ twit defaultset
$ twit d
```

Detail 
https://totzyuta.github.io/blog/2014/09/24/created-cli-tool-tweet-from-terminal-by-ruby/

If you notice any problem, please contact my twitter account ([@totzYuta](https://twitter.com/yutaTotz) or [@totu_iy](https://twitter.com/totu_iy)) or just create an issue.

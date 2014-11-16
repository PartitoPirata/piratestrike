piratestrike
============

twitter automation per netstrike

raccolta di script per client TTYtter http://www.floodgap.com/software/ttytter/

### HOWTO

#### Autenticazione account (solo first run)
`user@machine:~/piratestrike/$ THEDIR=$(pwd)`

`user@machine:~/piratestrike/$ ttytter -verbose=1 -rc=$THEDIR/.ttytterrc -keyf=$THEDIR/.ttytterkey -oauthwizard`

...seguire le istruzioni

#### Uso

Impostare chiave di ricerca in tweetstorm.pl
$track = '#socialstrike';
`user@machine:~/piratestrike/$ bash tweetstorm.sh`


**oppure**

`user@machine:~/piratestrike/$ torsocks bash tweetstorm.sh`


**oppure per salvare un log:**

`user@machine:~/piratestrike/$ torsocks bash tweetstorm.sh > tweetstorm.log`

**e per monitorare:**

`user@machine:~/piratestrike/$ tail -f tweetstorm.log`


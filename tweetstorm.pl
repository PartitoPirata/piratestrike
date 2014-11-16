die("I can't run anonymously") if ($anonymous);

$track = '#socialstrike'; # The search key to query twitter api with
$notimeline = 1;

$store->{'dontecho'} = $whoami; # this is the username

$handle = sub {
        my $ref = shift;
        my $sn = &descape($ref->{'user'}->{'screen_name'});
        
        return if ($sn eq $store->{'dontecho'});

        my $rtstring = "\/rt $ref->{'id_str'}";
        &ucommand($rtstring); # ReTweet all matching tweets

        my $favstring = "\/fav $ref->{'id_str'}";
        &ucommand($favstring); # Favorite all matching tweets

        my $tweettxt = &descape($ref->{'text'});
        &ucommand($tweettxt); # Tweet a new tweet copying any matching tweet
        
        &defaulthandle($ref);
        return 1;
};

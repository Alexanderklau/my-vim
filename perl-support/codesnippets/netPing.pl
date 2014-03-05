use Net::Ping;

my $host = 'localhost';
$host = defined($host)?$host:"1.1.1.1";
my $p = Net::Ping->new();
if($p->ping($host,3)){
	print "$host is alive.\n";
}else{
	print "$host is not alive\n";
}
$p->close();

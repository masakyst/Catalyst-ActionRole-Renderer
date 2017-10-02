use strict;
use Test::More;

use FindBin;
use lib "$FindBin::Bin/lib";

use Catalyst::Test 'TestApp';
use HTTP::Request::Common;

ok( my $res = request('https://localhost/root_ssl'), 'request ok' );
is( $res->code, 200, 'SSL request to SSL' );

done_testing;

package Slim::DataStores::DBI::Genre;

# $Id$

use strict;
use base 'Slim::DataStores::DBI::DataModel';

{
	my $class = __PACKAGE__;

	$class->table('genres');
	$class->columns(Essential => qw/id name namesort moodlogic_id moodlogic_mixable musicmagic_mixable/);
	$class->columns(Stringify => qw/name/);

	$class->has_many('genreTracks' => ['Slim::DataStores::DBI::GenreTrack' => 'genre']);
}

1;

__END__


# Local Variables:
# tab-width:4
# indent-tabs-mode:t
# End:

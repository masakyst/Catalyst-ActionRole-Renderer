package Catalyst::ActionRole::Renderer;

use strict;
use Moose::Role;
use namespace::autoclean;

our $VERSION = '0.01';


around execute => sub {
    my $orig = shift;
    my $self = shift;
    my ($controller, $c) = @_;

    my $view = $self->attributes->{View}->[0];
    unless ($view) {
        $view = $c->config->{default_view};
    }
    my $renderer = sprintf "View::%s", $view;
    $c->log->debug($renderer);
    $c->forward($renderer);

    return $self->$orig(@_);
};

1;

__END__

=encoding utf-8

=head1 NAME

Catalyst::ActionRole::Renderer - Rendering view for Catalyst action

=head1 SYNOPSIS

  package MyApp::Controller::Root;
  use Moose;
  use namespace::autoclean;

  BEGIN { extends 'Catalyst::Controller'; }

  sub lookup :GET Args(1) :Does(Renderer) :View(TT) {
      my ( $self, $c ) = @_;
  }


=head1 DESCRIPTION

Catalyst::ActionRole::Renderer is Rendering view for Catalyst action


=head1 SEE ALSO


=over 2

=item L<Catalyst::View>

=item L<Catalyst::ActionRole>

=back

=head1 AUTHOR

Masaaki Saito E<lt>masakyst.public@gmail.comE<gt>

=head1 COPYRIGHT

Copyright 2017- Masaaki Saito

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut

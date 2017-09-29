# NAME

Catalyst::ActionRole::Renderer - Rendering view for Catalyst action

# SYNOPSIS

    package MyApp::Controller::Root;
    use Moose;
    use namespace::autoclean;

    BEGIN { extends 'Catalyst::Controller'; }

    sub lookup :GET Args(1) :Does(Renderer) :View(TT) {
        my ( $self, $c ) = @_;
    }

# DESCRIPTION

Catalyst::ActionRole::Renderer is Rendering view for Catalyst action

# SEE ALSO

- [Catalyst::View](https://metacpan.org/pod/Catalyst::View)
- [Catalyst::ActionRole](https://metacpan.org/pod/Catalyst::ActionRole)

# AUTHOR

Masaaki Saito <masakyst.public@gmail.com>

# COPYRIGHT

Copyright 2017- Masaaki Saito

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

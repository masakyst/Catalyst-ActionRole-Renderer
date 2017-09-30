# NAME

Catalyst::ActionRole::Renderer - Rendering views for Catalyst action

# SYNOPSIS

    package MyApp::Controller::Root;
    use Moose;
    use namespace::autoclean;

    BEGIN { extends 'Catalyst::Controller'; }

    sub lookup :Local :Does(Renderer) :View(TT) {
        my ( $self, $c ) = @_;
        $c->stash->{template} = 'helloworld.tt';
    }

# DESCRIPTION

Catalyst::ActionRole::Renderer is rendering views for Catalyst action.

capable of declaratively rendering views.

- No `$c.forward` 
- No `sub end : ActionClass('RenderView') {}` 

# SEE ALSO

- [Catalyst::Controller](https://metacpan.org/pod/Catalyst::Controller)
- [Catalyst::View](https://metacpan.org/pod/Catalyst::View)

# AUTHOR

Masaaki Saito <masakyst.public@gmail.com>

# COPYRIGHT

Copyright 2017- Masaaki Saito

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

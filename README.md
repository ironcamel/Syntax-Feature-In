# NAME

Syntax::Feature::In - provides an "in" operator as a replacement for smartmatch

# VERSION

version 0.0003

# SYNOPSIS

    use syntax 'in';

    my $found = 42 |in| [ 1 .. 100 ];

# DESCRIPTION

This modules imports the `in` operator.
It can be used as in infix operator:

    $foo |in| $bar

Or in a more traditional way:

    in->($foo, $bar)

It does a simplified version of smartmatch as described in [match::simple](http://search.cpan.org/perldoc?match::simple).

# SEE ALSO

- [match::simple](http://search.cpan.org/perldoc?match::simple)
- [Scalar::In](http://search.cpan.org/perldoc?Scalar::In)

# AUTHOR

Naveed Massjouni <naveed@vt.edu>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Naveed Massjouni.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

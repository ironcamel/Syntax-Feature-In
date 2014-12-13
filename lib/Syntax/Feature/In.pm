package Syntax::Feature::In;
use strict;
use warnings;
use match::simple qw(match);
use Sub::Infix;
use Exporter qw(import);
our @EXPORT = qw(in);

# VERSION

sub install {
    my ($class, %args) = @_;
    no strict 'refs';
    *{$args{into} . '::in'} = infix { match @_ };
}

# ABSTRACT: provides an "in" operator as a replacement for smartmatch

=head1 SYNOPSIS

    use syntax 'in';

    my $found = 42 |in| [ 1 .. 100 ];

=head1 DESCRIPTION

This modules imports the C<in> operator.
It can be used as in infix operator:

    $foo |in| $bar

Or in a more traditional way:

    in->($foo, $bar)

It does a simplified version of smartmatch as described in L<match::simple>.

=head1 SEE ALSO

=over

=item *

L<match::simple>

=item *

L<Scalar::In>

=back

=cut

1;

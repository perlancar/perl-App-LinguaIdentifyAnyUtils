package App::LinguaIDUtils;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use App::LinguaCommonUtils qw(%arg_words %arg_nums);

our %SPEC;

$SPEC{num_to_word} = {
    v => 1.1,
    summary => 'Convert number (123) to word ("seratus dua puluh tiga")',
    'x.no_index' => 1,
    args => {
        %arg_nums,
    },
    result_naked => 1,
};
sub num_to_word {
    require Lingua::ID::Nums2Words;

    my %args = @_;

    [map {Lingua::ID::Nums2Words::nums2words($_)} @{ $args{nums} }];
}

$SPEC{word_to_num} = {
    v => 1.1,
    summary => 'Convert word ("seratus dua puluh tiga") to number (123)',
    'x.no_index' => 1,
    args => {
        %arg_words,
    },
    result_naked => 1,
};
sub word_to_num {
    require Lingua::ID::Words2Nums;

    my %args = @_;

    [map {Lingua::ID::Words2Nums::words2nums($_)} @{ $args{words} }];
}

1;
# ABSTRACT: Command-line utilities related to the Indonesian language

=for Pod::Coverage .+

=head1 SYNOPSIS

This distribution provides the following command-line utilities:

#INSERT_EXECS_LIST


=head1 DESCRIPTION

This distribution will become a collection of CLI utilities related to
Indonesian language. Currently it contains very little and the collection will
be expanded in subsequent releases.


=head1 SEE ALSO

=cut

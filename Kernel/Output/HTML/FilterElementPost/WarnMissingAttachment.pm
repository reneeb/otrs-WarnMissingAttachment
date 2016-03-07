# --
# Kernel/Output/HTML/FilterElementPost/WarnMissingAttachment.pm
# Copyright (C) 2013 - 2016 Perl-Services.de, http://www.perl-services.de/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::FilterElementPost::WarnMissingAttachment;

use strict;
use warnings;

use List::Util qw(first);

our @ObjectDependencies = qw(
    Kernel::Config
    Kernel::Output::HTML::Layout
);

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $ConfigObject = $Kernel::OM->Get('Kernel::Config');
    my $LayoutObject = $Kernel::OM->Get('Kernel::Output::HTML::Layout');

    # get template name
    my $Templatename = $Param{TemplateFile} || '';
    return 1 if !$Templatename;
    return 1 if !first{ $Templatename eq $_ }keys %{$Param{Templates} || {}};

    for my $Keyword ( @{ $ConfigObject->Get('WarnMissingAttachment::Keywords') || [] } ) {
        $LayoutObject->Block(
            Name => 'Keyword',
            Data => { Value => $Keyword },
        );
    }

    my %BodyFieldNames = %{ $ConfigObject->Get('WarnMissingAttachment::BodyField') || {} };
    my $Fieldname      = $BodyFieldNames{$Templatename};

    my $Snippet = $LayoutObject->Output(
        TemplateFile => 'WarnMissingAttachmentJS',
        Data         => {
            Fieldname => $Fieldname,
        },
    ); 

    ${ $Param{Data} } =~ s{\z}{$Snippet}xsm;

    return ${ $Param{Data} };
}

1;

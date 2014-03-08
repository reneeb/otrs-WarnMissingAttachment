# --
# Kernel/Output/HTML/OutputFilterWarnMissingAttachment.pm
# Copyright (C) 2013 Perl-Services.de, http://www.perl-services.de/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::OutputFilterWarnMissingAttachment;

use strict;
use warnings;

use List::Util qw(first);

our $VERSION = 0.01;

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for my $Object (
        qw(MainObject ConfigObject LogObject LayoutObject ParamObject)
        )
    {
        $Self->{$Object} = $Param{$Object} || die "Got no $Object!";
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # get template name
    my $Templatename = $Param{TemplateFile} || '';
    return 1 if !$Templatename;
    return 1 if !first{ $Templatename eq $_ }keys %{$Param{Templates} || {}};

    for my $Keyword ( @{ $Self->{ConfigObject}->Get('WarnMissingAttachment::Keywords') || [] } ) {
        $Self->{LayoutObject}->Block(
            Name => 'Keyword',
            Data => { Value => $Keyword },
        );
    }

    my %BodyFieldNames = %{ $Self->{ConfigObject}->Get('WarnMissingAttachment::BodyField') || {} };
    my $Fieldname      = $BodyFieldNames{$Templatename};

    my $Snippet = $Self->{LayoutObject}->Output(
        TemplateFile => 'WarnMissingAttachmentJS',
        Data         => {
            Fieldname => $Fieldname,
        },
    ); 

    ${ $Param{Data} } =~ s{\z}{$Snippet}xsm;

    return ${ $Param{Data} };
}

1;

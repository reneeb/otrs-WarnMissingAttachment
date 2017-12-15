# --
# Copyright (C) 2013 - 2017 Perl-Services.de, http://www.perl-services.de/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::FilterElementPost::WarnMissingAttachment;

use strict;
use warnings;

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
    return 1 if !$Param{Templates}->{$Templatename};

    my $LocalizedKeywords = $ConfigObject->Get('WarnMissingAttachment::LocalizedKeywords') || {};
    my @Keywords;

    my $UserLanguage = $LayoutObject->{LanguageObject}->{UserLanguage};
    if ( $LocalizedKeywords->{$UserLanguage} ) {
        push @Keywords, @{ $LocalizedKeywords->{$UserLanguage} || [] };
    }
    
    if ( $ConfigObject->Get('WarnMissingAttachment::Keywordlist') eq 'international' && $UserLanguage ne 'en' ) {
        push @Keywords, @{ $LocalizedKeywords->{en} || [] };
    }

    if ( !$LocalizedKeywords->{$UserLanguage} ) {
        push @Keywords, @{ $ConfigObject->Get('WarnMissingAttachment::Keywords') || [] };
    }

    for my $Keyword ( @Keywords ) {
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

    my ($JSComplete, $JS) = split /__##__/, $Snippet, 2;

    ${ $Param{Data} } =~ s{\z}{$JS}xsm;

    $LayoutObject->AddJSOnDocumentComplete( Code => $JSComplete );

    return 1;
}

1;

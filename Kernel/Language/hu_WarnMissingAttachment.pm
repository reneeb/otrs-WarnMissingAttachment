# --
# Kernel/Language/hu_WarnMissingAttachment.pm - the Hungarian translation of WarnMissingAttachment
# Copyright (C) 2016 Perl-Services, http://www.perl-services.de
# Copyright (C) 2016 Balázs Úr, http://www.otrs-megoldasok.hu/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::hu_WarnMissingAttachment;

use strict;
use warnings;

use utf8;

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    # Kernel/Config/Files/WarnMissingAttachment.xml
    $Lang->{'List of screens that are affected by this module.'} = 'Képernyők listája, amelyeket ez a modul érint.';
    $Lang->{'Names of Body fields.'} = 'A törzsmezők nevei.';
    $Lang->{'German keywords that indicates that an attachment should be sent.'} =
        'Német kulcsszavak, amelyek azt jelzik, hogy mellékletet kellene küldeni.';
    $Lang->{'English keywords that indicates that an attachment should be sent.'} =
        'Angol kulcsszavak, amelyek azt jelzik, hogy mellékletet kellene küldeni.';
    $Lang->{'Hungarian keywords that indicates that an attachment should be sent.'} =
        'Magyar kulcsszavak, amelyek azt jelzik, hogy mellékletet kellene küldeni.';
    $Lang->{'localized'} = '';
    $Lang->{'localized + english'} = '';
    $Lang->{'Define how the keywordlist is built - either only agents\' language or both user language and english'} =
        '';
    $Lang->{'Keywords that indicates that an attachment should be sent. It\'s a fallback when no localization for the agents\' language can be found.'} =
        '';


    # Kernel/Output/HTML/Templates/Standard/WarnMissingAttachmentJS.tt
    $Lang->{'Sending without Attachment'} = 'Küldés melléklet nélkül';
    $Lang->{'You probably forgot to attach something to that message. Send without an attachment?'}
        = 'Valószínűleg elfelejtett csatolni valamit ehhez az üzenethez. Elküldi melléklet nélkül?';
    $Lang->{'Send without an attachment'} = 'Küldés melléklet nélkül';
    $Lang->{'I want to attach something'} = 'Szeretnék csatolni valamit';

    return 1;
}

1;

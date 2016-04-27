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

our $VERSION = '0.01';

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    # Kernel/Config/Files/WarnMissingAttachment.xml
    $Lang->{'List of screens that are affected by this modul.'} = 'Képernyők listája, amelyeket ez a modul érint.';
    $Lang->{'Names of Body fields.'} = 'A törzsmezők nevei.';
    $Lang->{'Keywords that indicates that an attachment should be sent.'} =
        'Kulcsszavak, amelyek azt jelzik, hogy mellékletet kellene küldeni.';

    # Kernel/Output/HTML/Templates/Standard/WarnMissingAttachmentJS.tt
    $Lang->{'Sending without Attachment'} = 'Küldés melléklet nélkül';
    $Lang->{'You probably forgot to attach something to that message. Send without an attachment?'}
        = 'Valószínűleg elfelejtett csatolni valamit ehhez az üzenethez. Elküldi melléklet nélkül?';
    $Lang->{'Send without an attachment'} = 'Küldés melléklet nélkül';
    $Lang->{'I want to attach something'} = 'Szeretnék csatolni valamit';

    return 1;
}

1;

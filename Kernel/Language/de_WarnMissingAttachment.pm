# --
# Kernel/Language/de_WarnMissingAttachment.pm - the german translation of WarnMissingAttachment
# Copyright (C) 2014 Perl-Services, http://www.perl-services.de
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::de_WarnMissingAttachment;

use strict;
use warnings;

use utf8;

our $VERSION = '0.01';

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Sending without Attachment'} = 'Absenden ohne Anhang';
    $Lang->{'You probably forgot to attach something to that message. Send without an attachment?'}
        = 'Sie haben wahrscheinlich vergessen einen Anhang zu dieser Nachricht hinzuzufügen. Nachricht trotzdem abschicken?';
    $Lang->{'Send without an attachment'} = 'Ohne Anhang absenden';
    $Lang->{'I want to attach something'} = 'Ich möchte einen Anhang hinzufügen';

    return 1;
}

1;

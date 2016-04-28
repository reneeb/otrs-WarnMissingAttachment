# --
# Kernel/Language/de_WarnMissingAttachment.pm - the German translation of WarnMissingAttachment
# Copyright (C) 2016 Perl-Services, http://www.perl-services.de
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::de_WarnMissingAttachment;

use strict;
use warnings;

use utf8;

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    # Kernel/Config/Files/WarnMissingAttachment.xml
    $Lang->{'List of screens that are affected by this module.'} = 'Liste der von diesem Modul betroffenen Ansichten';
    $Lang->{'Names of Body fields.'} = 'Namen der Textfelder';
    $Lang->{'localized'} = 'Lokalisiert';
    $Lang->{'localized + english'} = 'Lokalisiert plus Englisch';
    $Lang->{'Define how the keyword list is built - either only agents\' language or both user language and english.'} =
        'Definiert wie die Liste der Schlüsselwörter gebildet wird - entweder nur die Sprache des Agenten oder sowohl die Sprache des Benutzers und Englisch.';
    $Lang->{'Keywords that indicates that an attachment should be sent. It\'s a fallback when no localization for the agents\' language can be found.'} =
        'Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll. Als Fallback wenn keine Lokalisierung für die Sprache des Agenten gefunden wird.';
    $Lang->{'German keywords that indicates that an attachment should be sent.'} = 
        'Deutsche Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'English keywords that indicates that an attachment should be sent.'} = 
        'Englische  Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Hungarian keywords that indicates that an attachment should be sent.'} = 
        'Ungarische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';

    # Kernel/Output/HTML/Templates/Standard/WarnMissingAttachmentJS.tt
    $Lang->{'Sending without Attachment'} = 'Absenden ohne Anhang';
    $Lang->{'You probably forgot to attach something to that message. Send without an attachment?'} =
        'Sie haben wahrscheinlich vergessen einen Anhang zu dieser Nachricht hinzuzufügen. Nachricht trotzdem abschicken?';
    $Lang->{'Send without an attachment'} = 'Ohne Anhang absenden';
    $Lang->{'I want to attach something'} = 'Ich möchte einen Anhang hinzufügen';

    return 1;
}

1;

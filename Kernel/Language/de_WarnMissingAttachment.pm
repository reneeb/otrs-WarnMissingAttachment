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
    $Lang->{'Czech keywords that indicates that an attachment should be sent.'} =
        'Tschechische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'German keywords that indicates that an attachment should be sent.'} = 
        'Deutsche Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Greek keywords that indicates that an attachment should be sent.'} =
        'Griechische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'English keywords that indicates that an attachment should be sent.'} = 
        'Englische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Spanish keywords that indicates that an attachment should be sent.'} =
        'Spanische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Finnish keywords that indicates that an attachment should be sent.'} =
        'Finnische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'French keywords that indicates that an attachment should be sent.'} =
        'Französische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Hebrew keywords that indicates that an attachment should be sent.'} =
        'Hebräische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Hungarian keywords that indicates that an attachment should be sent.'} = 
        'Ungarische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Indonesian keywords that indicates that an attachment should be sent.'} =
        'Indonesische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Italian keywords that indicates that an attachment should be sent.'} =
        'Italienische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Kazakh keywords that indicates that an attachment should be sent.'} =
        'Kasachische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Lithuanian keywords that indicates that an attachment should be sent.'} =
        'Litauische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Norwegian Bokmål keywords that indicates that an attachment should be sent.'} =
        'Norwegisch Bokmål Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Occitan keywords that indicates that an attachment should be sent.'} =
        'Okzitanische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Polish keywords that indicates that an attachment should be sent.'} =
        'Polnische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Portuguese keywords that indicates that an attachment should be sent.'} =
        'Portugiesische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Brazilian Portuguese keywords that indicates that an attachment should be sent.'} =
        'Brasilianisches Portugiesische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Russian keywords that indicates that an attachment should be sent.'} =
        'Russische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Slovak keywords that indicates that an attachment should be sent.'} =
        'Slowakische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Serbian keywords that indicates that an attachment should be sent.'} =
        'Serbische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Swedish keywords that indicates that an attachment should be sent.'} =
        'Schwedische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Turkish keywords that indicates that an attachment should be sent.'} =
        'Türkische Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';
    $Lang->{'Mandarin keywords that indicates that an attachment should be sent.'} =
        'Mandarin Schlüsselwörter die darauf hinweisen dass ein Anhang gesendet werden soll.';

    # Kernel/Output/HTML/Templates/Standard/WarnMissingAttachmentJS.tt
    $Lang->{'Sending without Attachment'} = 'Absenden ohne Anhang';
    $Lang->{'You probably forgot to attach something to that message. Send without an attachment?'} =
        'Sie haben wahrscheinlich vergessen einen Anhang zu dieser Nachricht hinzuzufügen. Nachricht trotzdem abschicken?';
    $Lang->{'Send without an attachment'} = 'Ohne Anhang absenden';
    $Lang->{'I want to attach something'} = 'Ich möchte einen Anhang hinzufügen';

    return 1;
}

1;

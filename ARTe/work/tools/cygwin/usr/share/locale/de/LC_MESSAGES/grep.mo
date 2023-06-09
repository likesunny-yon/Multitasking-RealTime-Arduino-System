��    r      �  �   <      �	  �   �	  �   �
  /  L  �  |     L  /  a  %  �  �  �  Q  n  �  �  k  T  G  �  %        .  0   B     s     �  ,   �  ,   �  ,     '   3  -   [      �  (   �  (   �     �          <  q   >     �     �     �  Q   �     /  ?   I     �     �     �     �  $   �          (  <   C  <   �     �     �     �     �  5     1   9  :   k     �     �  #   �     �     
  3   !     U     ]  &   p     �     �     �     �     �  (   �         -     :   ;   Q   3   �   /   �   +   �   '   !  #   E!     i!     �!     �!     �!     �!  4   �!     	"  "   ("  !   K"  -   m"      �"     �"     �"  $   �"     #     '#     B#     Z#     z#     �#  $   �#     �#     �#     �#  >   �#     5$  P   N$  -   �$  ,   �$  *   �$     %%     2%     ?%     L%     `%     z%     �%     �%  t  �%  �   "'  �   (  U  �(  F  :*  �   �,  �  -  �  �.      0  �  !2  s  	4  �  }5  y  57  -   �8     �8  4   �8  #   %9  #   I9  ,   m9  >   �9  ,   �9  -   :  -   4:  &   b:  .   �:  /   �:  !   �:  !   
;     ,;  �   0;     �;     �;  &   �;  ^   <     b<  O   {<     �<     �<     	=     !=  .   ==     l=     �=  T   �=  T   �=     O>     f>     s>  '   �>  R   �>  6   ?  @   <?     }?     �?  )   �?  #   �?  E   �?  ;   6@     r@     y@  /   �@     �@     �@     �@     A     =A  )   VA     �A  ^  �A     �B  @   C  7   UC  3   �C  /   �C  +   �C  '   D  #   ED     iD     �D     �D      �D  ?   �D  <   E  =   @E  6   ~E  I   �E  -   �E  .   -F     \F  &   lF  "   �F     �F     �F  +   �F     G     9G  ,   RG     G     �G     �G  E   �G     H  G   3H  *   {H  7   �H  <   �H  !   I  *   =I  !   hI     �I  "   �I  &   �I     �I     J             O   %              ]   '   S   J               n          i   R   C   e   &       #                     7   +       Q   ?   H   $   D            [   /             2   m   I             r   p   j   ;          =         f       b       4   @      G   .       
                  d   A   3      (   ,   N               V   ^   	   `          c       E      P   >   Z   q                   g   !   )       <   8   L              M   K   5   B   \       0   6       l           Y   h   T          X   W   "             o   a   :           1       k          F       _   *   -       9       U    
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
 
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             print version information and exit
      --help                display this help and exit
      --mmap                deprecated no-op; evokes a warning
 
Output control:
  -m, --max-count=NUM       stop after NUM matches
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print the file name for each match
  -h, --no-filename         suppress the file name prefix on output
      --label=LABEL         use LABEL as the standard input file name prefix
 
Report bugs to: %s
       --include=FILE_PATTERN  search only files that match FILE_PATTERN
      --exclude=FILE_PATTERN  skip files and directories matching FILE_PATTERN
      --exclude-from=FILE   skip files matching any file pattern from FILE
      --exclude-dir=PATTERN  directories that match PATTERN will be skipped.
   -E, --extended-regexp     PATTERN is an extended regular expression (ERE)
  -F, --fixed-strings       PATTERN is a set of newline-separated fixed strings
  -G, --basic-regexp        PATTERN is a basic regular expression (BRE)
  -P, --perl-regexp         PATTERN is a Perl regular expression
   -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories;
                            ACTION is 'read', 'recurse', or 'skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets;
                            ACTION is 'read' or 'skip'
  -r, --recursive           like --directories=recurse
  -R, --dereference-recursive  likewise, but follow all symlinks
   -L, --files-without-match  print only names of FILEs containing no match
  -l, --files-with-matches  print only names of FILEs containing matches
  -c, --count               print only a count of matching lines per FILE
  -T, --initial-tab         make tabs line up (if needed)
  -Z, --null                print 0 byte after FILE name
   -NUM                      same as --context=NUM
      --color[=WHEN],
      --colour[=WHEN]       use markers to highlight the matching strings;
                            WHEN is 'always', 'never', or 'auto'
  -U, --binary              do not strip CR characters at EOL (MSDOS/Windows)
  -u, --unix-byte-offsets   report offsets as if CRs were not there
                            (MSDOS/Windows)

   -e, --regexp=PATTERN      use PATTERN for matching
  -f, --file=FILE           obtain PATTERN from FILE
  -i, --ignore-case         ignore case distinctions
  -w, --word-regexp         force PATTERN to match only whole words
  -x, --line-regexp         force PATTERN to match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
   -o, --only-matching       show only the part of a line matching PATTERN
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE;
                            TYPE is 'binary', 'text', or 'without-match'
  -a, --text                equivalent to --binary-files=text
 %s can only use the %s pattern syntax %s home page: <%s>
 %s home page: <http://www.gnu.org/software/%s/>
 %s%s argument '%s' too large %s: invalid option -- '%c'
 %s: option '%c%s' doesn't allow an argument
 %s: option '%s' is ambiguous; possibilities: %s: option '--%s' doesn't allow an argument
 %s: option '--%s' requires an argument
 %s: option '-W %s' doesn't allow an argument
 %s: option '-W %s' is ambiguous
 %s: option '-W %s' requires an argument
 %s: option requires an argument -- '%c'
 %s: unrecognized option '%c%s'
 %s: unrecognized option '--%s'
 ' 'egrep' means 'grep -E'.  'fgrep' means 'grep -F'.
Direct invocation as either 'egrep' or 'fgrep' is deprecated.
 (C) (standard input) Binary file %s matches
 Example: %s -i 'hello world' menu.h main.c

Regexp selection and interpretation:
 GNU Grep home page: <%s>
 General help using GNU software: <http://www.gnu.org/gethelp/>
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Invocation as 'egrep' is deprecated; use 'grep -E' instead.
 Invocation as 'fgrep' is deprecated; use 'grep -F' instead.
 Memory exhausted Mike Haertel No match No previous regular expression PATTERN is a set of newline-separated fixed strings.
 PATTERN is an extended regular expression (ERE).
 PATTERN is, by default, a basic regular expression (BRE).
 Packaged by %s
 Packaged by %s (%s)
 Premature end of regular expression Regular expression too big Report %s bugs to: %s
 Search for PATTERN in each FILE or standard input.
 Success Trailing backslash Try '%s --help' for more information.
 Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... PATTERN [FILE]...
 Valid arguments are: When FILE is -, read standard input.  With no FILE, read . if a command-line
-r is given, - otherwise.  If fewer than two FILEs are given, assume -h.
Exit status is 0 if any line is selected, 1 otherwise;
if any error occurs and -q is not given, the exit status is 2.
 Written by %s and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, %s, and others.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
and %s.
 Written by %s, %s, %s,
%s, %s, %s, and %s.
 Written by %s, %s, %s,
%s, %s, and %s.
 Written by %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
and %s.
 Written by %s, %s, and %s.
 Written by %s.
 ` ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified exceeded PCRE's backtracking limit exceeded PCRE's line length limit failed to return to initial working directory input file %s is also the output input is too large to count internal error internal error (should never happen) invalid %s%s argument '%s' invalid argument %s for %s invalid character class invalid context length argument invalid matcher %s invalid max count invalid suffix in %s%s argument '%s' lseek failed memory exhausted no syntax specified others, see <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> recursive directory loop support for the -P option is not compiled into this --disable-perl-regexp binary the --mmap option has been a no-op since 2010 the -P option only supports a single pattern unable to record current working directory unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unknown binary-files type unknown devices method warning: %s: %s write error Project-Id-Version: GNU grep 2.14.46
Report-Msgid-Bugs-To: bug-grep@gnu.org
POT-Creation-Date: 2014-01-01 20:44-0800
PO-Revision-Date: 2013-10-21 14:01+0200
Last-Translator: Philipp Thomas <pth@suse.de>
Language-Team: German <translation-team-de@lists.sourceforge.net>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 
Kontextkontrolle:
  -B, --before-context=ANZAHL  ANZAHL Zeilen vorausghenden Kontextes ausgeben
  -A, --after-context=ANZAHL   ANZAHL Zeilen nachfolgenden Kontextes ausgeben
  -C, --context=ANZAHL         ANZAHL Zeilen Kontext ausgeben
 
Lizenz GPLv3+: GNU GPL Version 3 oder höher <http://gnu.org/licenses/gpl.html>
Dies ist freie Software: Sie können sie ändern und weitergeben.
Es gibt keinerlei Garantien, soweit wie es das Gesetz erlaubt.

 
Verschiedenes:
  -s, --no-messages         Fehlermeldungen unterdrücken.
  -v, --revert-match        Nicht-passende Zeilen anzeigen.
  -V, --version             Versionsnummer ausgeben und beenden.
      --help                Diese Hilfe ausgeben und beenden.
      --mmap                Wenn möglich, Eingabe in den Speicher einblenden.
 
Kontrolle der Ausgabe:
  -m, --max-count=ZAHL      stoppt nach ZAHL Übereinstimmungen
  -b, --byte-offset         gibt mit den Zeilen auch den Abstand in Bytes an
  -n, --line-number         gibt mit den Zeilen auch die Zeilennummer an
      --line-buffered       Puffer nach jeder Zeile leeren
  -H, --with-filename       den Dateinamen für jede Übereinstimmung ausgeben
  -h, --no-filename         Ausgabe des vorangehenden Dateinamens unterdrücken
      --label=BEZEICHNUNG   Verwendet BEZEICHNUNG als Präfix für Dateianmen
                            der Standardeingabe
 
Melden Sie Übersetzungsfehler an <translation-team-de@lists.sourceforge.net>,
Programmfehler dagegen (auf Englisch, mit LC_ALL=C) an <%s>.
       --include=DATEI_MUSTER  durchsucht nur Dateien, die DATEI_MUSTER entsprechen
      --exclude=DATEI_MUSTER  überspringt Dateien und Verzeichnisse, die 
DATEI_MUSTER entsprechen
      --exclude-from=DATEI   überspringt Dateien, die einem Dateimuster
                             in DATEI entsprechen
      --exclude-dir=MUSTER   Verzeichnisse, die MUSTER entsprechen werden übersprungen
   -E, --extended-regexp     MUSTER ist ein erweiterter regulärer Ausdruck.
  -F, --fixed-strings       MUSTER ist eine Menge durch Zeilenubruch
                            getrennter Zeichenketten.
  -G, --basic-regexp        MUSTER ist ein regulärer Standardausdruck.
  -P, --perl-regexp         MUSTER ist ein regulärer Ausdruck, 
                            wie Perl ihn akzeptiert.
   -I                        gleichbedeutend mit --binary-files=without-match
  -d, --directories=AKTION  beschreibt wie Verzeichnisse zu behandeln sind;
                            AKTION können „read“, „recurse“, oder „skip“ sein
  -D, --devices=AKTION      Behandlung von Geräten, FIFOs oder Sockets;
                            AKTION können „read“ oder „skip“ sein
  -r, --recursive           like --directories=recurse
  -R, --dereference-recursive  likewise, but follow all symlinks
   -L, --files-without-match  nur die Namen von Dateien ausgeben, die keinen
                             passenden Inhalt haben
  -l, --files-with-matches  nur die Namen von Dateien mit passendem Inhalt
                            ausgeben
  -c, --count               nur die Anzahl der passenden Zeilen pro DATEI
                            ausgeben
  -T, --initial-tab         Tabulatoren (wenn nötig) ausrichen
  -Z, --null                ein Nullbyte nach einem Dateinamen ausgeben
   -ANZAHL                   Wie --context=ANZAHL.
      --color[=WANN], 
      --colour=[WANN]       Passende Textfragmente markieren.
                            WANN kann „always“, „never“ oder „auto“ sein.
  -U, --binary              CR-Zeichen am Zeilenende belassen (MSDOS).
  -u, --unix-byte-offsets   Offsets ausgeben, als fehlten CR-Zeichen (MSDOS).

   -e, --regexp=MUSTER       MUSTER als regulären Ausdruck verwenden.
  -f, --file=FILE           MUSTER aus DATEI lesen.
  -i, --ignore-case         Unterschied zwischen Groß- und Kleinschreibung
                            ignorieren.
  -w, --word-regexp         MUSTER paßt nur auf ganze Wörter.
  -x, --line-regexp         MUSTER paßt nur auf ganze Zeilen.
  -z, --null-data           Eine Zeile endet mit Nullbyte, nicht Newline.
   -o, --only-matching       zeigt nur den Teil einer Zeile, der zu MUSTER passt
  -q, --quiet, --silent     unterdrüjckt alle normalen Ausgaben
      --binary-files=TYP    alle binären Dateien sind vom Typ TYP;
                            TYP können „binary“, „text“, oder „without-match“ sein
  -a, --text                gleichbedeutend mit --binary-files=text
 %s kann nur die Mustersyntax von %s verwenden %s Homepage: <%s>
 Homepage für %s: <http://www.gnu.org/software/%s/>
 %s%s Argument „%s“ ist zu groß %s: ungültige Option --  „%c“
 %s: Option „%c%s“ erlaubt kein Argument
 %s: die Option „%s“ ist mehrdeutig; Mögliche Bedeutungen: %s: Option „--%s“ erlaubt kein Argument
 %s: Option „--%s“ benötigt ein Argument
 %s: Option „-W %s“ erlaubt kein Argument
 %s: Option „-W %s“ ist mehrdeutig
 %s: Option „-W %s“ erfordert ein Argument
 %s: Option erfordert ein Argument --  „%c“
 %s: unbekannte Option „%c%s“
 %s: unbekannte Option „--%s“
 “ „egrep“ bedeutet „grep -E“ und „fgrep“ bedautet „grep -F“.
Der direkte Aufruf als entweder „egrep“ oder „fgrep“ ist veraltet.
 © (Standardeingabe) Übereinstimmungen in Binärdatei %s.
 Beispiel: %s -i 'Hallo Welt' menu.h main.c

Auswahl und Interpretation regulärer Ausdrücke:
 GNU Grep Homepage: <%s>
 Allgemeine Hilfe zur Benutzung von GNU-Software: <http://www.gnu.org/gethelp/>
 Ungültige Rückwärtsreferenz Ungültiger Zeichenklassenname Ungültiges Suchzeichen Ungültiger Inhalt von \{\} Ungültiger vorhergehender regulärer Ausdruck Ungültiges Bereichsende Ungültiger regulärer Ausdruck Der Aufruf als „egrep“ ist überholt, verwenden Sie statt dessen „grep -E“.
 Der Aufruf als „fgrep“ ist überholt, verwenden Sie statt dessen „grep -F“.
 Speicher ausgeschöpft Mike Haertel Keine Übereinstimmung Kein vorhergehender regulärer Ausdruck MUSTER ist ein Satz von Zeichenketten fester Länge getrennt durch Zeilenumbruch.
 MUSTER ist ein erweiterter regulärer Ausdruck (ERE).
 MUSTER ist normalerweise ein regulärer Standardausdruck (BRE).
 Gepackt von %s
 Gepackt von %s (%s)
 Vorzeitiges Ende des regulären Ausdrucks Der reguläre Ausdruck ist zu groß Melden Sie Programmfehler für %s (auf Englisch, mit LC_ALL=C) an %s
 Suche nach MUSTER in jeder DATEI oder der Standardeingabe.
 Erfolg Rückschrägstrich am Ende „%s --help“ liefert weitere Informationen.
 Unbekannter Systemfehler Kein Gegenstück für ( oder \( Kein Gegenstück für ) oder \) Kein Gegenstück für [ oder [^ Kein Gegenstück für \{ Aufruf: %s [OPTION]... MUSTER [DATEI]...
 Gültige Argumente sind: Wenn DATEI - ist, wird die Standardeingabe gelesen.  Ohne DATEI wird „.“
gelesen, wenn -r auf der Kommandozeile angegeben wurde, ansonsten -
Wenn weniger als zwei FIFOs angegeben wurdenm wird -h angenommen.
Der Rückgabewert ist 0 wenn eine Zeile passte, ansonsten 1.
Wenn ein Fehler auftrat und -q nicht angegeben wurde ist der Rückgabewert 2.
 Geschrieben von %s und %s.
 Geschrieben von %s, %s, %s,
%s, %s, %s, %s,
%s, %s und anderen.
 Geschrieben von %s, %s, %s,
%s, %s, %s, %s,
%s und %s.
 Geschrieben von %s, %s, %s,
%s, %s, %s, %s
und %s.
 Geschrieben von %s, %s, %s,
%s, %s, %s und %s.
 Geschrieben von %s, %s, %s,
%s, %s und %s.
 Geschrieben von %s, %s, %s,
%s und %s.
 Geschrieben von %s, %s, %s
und %s.
 Geschrieben von %s, %s und %s.
 Geschrieben von %s.
 „ mehrdeutiges Argument %s für %s die Syntax für Zeichenklassen ist [[:space:]], nicht [:space:] die angegebenen Entsprechungen stehen in Konflikt zueinander Überschreitung der Zurückverfolgungsbeschränkung des PCREs Überschreitung der zulässigen Zeilenlänge von PCREs die Rückkehr in das ursprüngliche Arbeitsverzeichnis war nicht möglich die Eingabedatei %s ist auch die Ausgabedatei die Eingabe ist zu groß um gezählt zu werden interner Fehler Interner Fehler (sollte nie vorkommen) ungültiges %s%s Argument „%s“ ungültiges Argument %s für %s Ungültige Zeichenklasse %s ungültiges Argument für die Kontextlänge ungültige Entsprechung %s ungültige Maximalanzahl ungültiger Suffix in %s%s Argument „%s“ lseek ist fehlgeschlagen Speicher ausgeschöpft es wurde keine Syntax angegeben für weitere siehe <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> rekursive Verzeichnisschleife Dieses Programm wurde ohne Unterstützung für die Option -P kompiliert die Option --mmap wird seit 2010 ignoriert Die Option -P unterstützt nur ein einzelnes Suchmuster das aktuelles Verzeichnisses kann nicht aufgezeichnet werden ( ohne schließendes Gegenstück. Schließende ) ohne öffnendes Gegenstück [ ohne schließendes Gegenstück. unbeendete \-Escape-Sequenz. unbekannter Typ für Binärdateien Unbekannte Methode für Gerätedateien Warnung: %s: %s Schreibfehler 
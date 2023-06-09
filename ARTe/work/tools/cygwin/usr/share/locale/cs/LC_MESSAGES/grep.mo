��    r      �  �   <      �	  �   �	  �   �
  /  L  �  |     L  /  a  %  �  �  �  Q  n  �  �  k  T  G  �  %        .  0   B     s     �  ,   �  ,   �  ,     '   3  -   [      �  (   �  (   �     �          <  q   >     �     �     �  Q   �     /  ?   I     �     �     �     �  $   �          (  <   C  <   �     �     �     �     �  5     1   9  :   k     �     �  #   �     �     
  3   !     U     ]  &   p     �     �     �     �     �  (   �         -     :   ;   Q   3   �   /   �   +   �   '   !  #   E!     i!     �!     �!     �!     �!  4   �!     	"  "   ("  !   K"  -   m"      �"     �"     �"  $   �"     #     '#     B#     Z#     z#     �#  $   �#     �#     �#     �#  >   �#     5$  P   N$  -   �$  ,   �$  *   �$     %%     2%     ?%     L%     `%     z%     �%     �%  s  �%  �   !'  �   (  V  �(  ~  C*  �   �,  o  K-  3  �.  `  �/  �  P2    14  �  56  �  �7      �9  %   �9  B   �9  4   :  (   G:  ;   p:  8   �:  ;   �:  .   !;  <   P;  0   �;  /   �;  1   �;  %    <  %   F<     l<  �   p<     =     	=     =  \   ==  #   �=  L   �=     >     $>     D>     \>  (   q>     �>     �>  O   �>  O   ?     o?     �?     �?  '   �?  D   �?  <   @  U   I@     �@     �@  (   �@  &   �@  ;   A  �   VA     �A     �A  7   B     NB     jB     B     �B     �B  2   �B     �B  �  C     �D  9   �D  0   �D  ,   E  (   ?E  $   hE      �E     �E     �E     �E     �E  !   �E  2   F     LF  0   hF  ,   �F  9   �F  (    G  <   )G     fG  .   vG  )   �G     �G     �G  "   H     'H     CH  4   `H  %   �H     �H     �H  A   �H      'I  R   HI  0   �I  8   �I  /   J     5J     EJ     UJ     eJ  !   �J  $   �J     �J     �J             O   %              ]   '   S   J               n          i   R   C   e   &       #                     7   +       Q   ?   H   $   D            [   /             2   m   I             r   p   j   ;          =         f       b       4   @      G   .       
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
 ` ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified exceeded PCRE's backtracking limit exceeded PCRE's line length limit failed to return to initial working directory input file %s is also the output input is too large to count internal error internal error (should never happen) invalid %s%s argument '%s' invalid argument %s for %s invalid character class invalid context length argument invalid matcher %s invalid max count invalid suffix in %s%s argument '%s' lseek failed memory exhausted no syntax specified others, see <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> recursive directory loop support for the -P option is not compiled into this --disable-perl-regexp binary the --mmap option has been a no-op since 2010 the -P option only supports a single pattern unable to record current working directory unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unknown binary-files type unknown devices method warning: %s: %s write error Project-Id-Version: grep 2.14.46
Report-Msgid-Bugs-To: bug-grep@gnu.org
POT-Creation-Date: 2014-01-01 20:44-0800
PO-Revision-Date: 2013-10-21 19:58+0200
Last-Translator: Petr Pisar <petr.pisar@atlas.cz>
Language-Team: Czech <translation-team-cs@lists.sourceforge.net>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 
Řízení kontextu:
  -B, --before-context=POČET vypíše POČET řádků před shodou
  -A, --after-context=POČET  vypíše POČET řádků za shodou
  -C, --context=POČET        vypíše POČET řádků kontextu (před i za shodou)
 
Licence GPLv3+: GNU GPL verze 3 nebo novější <http://gnu.org/licenses/gpl.html>.
Toto je volné programové vybavení: máte právo jej měnit a dále šířit.
Není zde ŽÁDNÁ ZÁRUKA, jak jen zákon dovoluje.

 
Různé:
  -s, --no-messages         potlačí chybové zprávy
  -v, --invert-match        vypíše řádky, které VZORKU nevyhovují
  -V, --version             vypíše označení verze a skončí
      --help                vypíše tuto nápovědu a skončí
      --mmap                bez významu, zastaralé, vypíše upozornění
 
Řízení výstupu:
  -m, --max-count=POČET     skončí, pokud najde POČET výrazů
  -b, --byte-offset         s každým výstupním řádkem vypíše jeho pozici
                            v souboru
  -n, --line-number         s každým výstupním řádkem vypíše jeho číslo řádku
      --line-buffered       vyprázdní výstup po každém řádku
  -H, --with-filename       u každé shody vypíše jméno souboru
  -h, --no-filename         potlačí předřazování jména souboru na výstupu
      --label=NÁZEV         použije NÁZEV jako označení standardního
                            vstupu na výstupu
 
Chyby v programu oznamujte (anglicky) na adresu: <%s>
Připomínky k překladu na adresu: <translation-team-cs@lists.sourceforge.net>
       --include=VZOREK      soubory, které vyhovují vzorku, budou zpracovány
      --exclude=VZOREK      soubory, které vyhovují vzorku, budou přeskočeny
      --exclude-from=SOUBOR soubory, které vyhovují vzorkům ze SOUBORU, budou
                            přeskočeny
      --exclude-dir=VZOREK  adresáře, které vyhovují vzorku, budou přeskočeny
   -E, --extended-regexp     VZOREK je rozšířený regulární výraz (ERE)
  -F, --fixed-strings       VZOREK je množina řetězců, každý na jednom řádku
  -G, --basic-regexp        VZOREK je základní regulární výraz (BRE)
  -P, --perl-regexp         VZOREK je regulární výraz z jazyka Perl
   -I                        jako --binary-files=without-match
  -d, --directories=AKCE    jak zpracovávat adresáře. AKCE může být:
                            „read“ (číst), „recurse“ (rekurze),
                            „skip“ (přeskočit)
  -D, --devices=AKCE        jak zpracovávat zařízení, FIFO (roury) a sockety,
                            AKCE může být: „read“ (číst) nebo „skip“ (přeskočit)
  -r, --recursive           jako --directories=recurse
  -R, --dereference-recursive
                            obdobně, jen následuje všechny symbolické odkazy
   -L, --files-without-match vypíše pouze jména souborů, ve kterých nebyl
                            VZOREK nalezen
  -l, --files-with-matches  vypíše pouze jména souborů, ve kterých byl VZOREK
                            nalezen
  -c, --count               vypíše pouze počet vyhovujících řádků na SOUBOR
  -T, --initial-tab         zarovnání začátků řádků tabulátory (je-li třeba)
  -Z, --null                vypíše nulový bajt za jménem SOUBORU
   -POČET                     stejné jako --context=POČET
      --color[=KDY],
      --colour[=KDY]         použije barev k rozlišení vyhovujících řetězců,
                             KDY může být „always“ (vždy), „never“ (nikdy)
                             nebo „auto“ (automaticky)
  -U, --binary               neodstraňuje znak CR na konci řádku (MSDOS/Windows)
  -u, --unix-byte-offsets    vypisuje pozici, jako by CR nebyly v souboru
                             (MSDOS/Windows)
   -e, --regexp=VZOREK       použije VZOREK jako regulární výraz
  -f, --file=SOUBOR         načte VZOREK ze SOUBORu
  -i, --ignore-case         ignoruje rozdíl mezi velikostí písmen
  -w, --word-regexp         VZOREK bude aplikován pouze na celá slova
  -x, --line-regexp         VZOREK bude aplikován pouze na celé řádky
  -z, --null-data           řádek končí nulovým bajtem místo znaku nového řádku
   -o, --only-matching       zobrazí pouze tu část řádku odpovídající VZORKU
  -q, --quiet, --silent     potlačí obvyklý výstup
      --binary-files=TYP    definuje typ binárních souborů
                            TYP může být: „binary“ (binární), „text“ (textový)
                            nebo „without-match“ (bez vyhovění vzorku)
  -a, --text                jako --binary-files=text
 %s umí pouze syntaxi vzorků %s Domovská stránka programu %s: <%s>
 Domovská stránka programu %s: <http://www.gnu.org/software/%s/>
 argument „%3$s“ u %1$s%2$s je příliš dlouhý %s: neznámý přepínač – „%c“
 %s: přepínač „%c%s“ musí být zadán bez argumentu
 %s: přepínač „%s“ není jednoznačný: možnosti: %s: přepínač „--%s“ musí být zadán bez argumentu
 %s: přepínač „--%s“ vyžaduje argument
 %s: přepínač „-W %s“ musí být zadán bez argumentu
 %s: přepínač „-W %s“ není jednoznačný
 %s: přepínač „-W %s“ vyžaduje argument
 %s: přepínač vyžaduje argument – „%c“
 %s: neznámý přepínač „%c%s“
 %s: neznámý přepínač „--%s“
 “ „egrep“ znamená „grep -E“. „fgrep“ znamená „grep -F“.
Přímé spouštění příkazem „egrep“ nebo „fgrep“ je zastaralé.
 © (standardní vstup) Binární soubor %s odpovídá
 Příklad: %s -i 'hello world' menu.h main.c

Výběr a interpretace regulárního výrazu:
 Domovská stránka GNU Grepu: <%s>
 Obecná pomoc s používáním GNU softwaru: <http://www.gnu.org/gethelp/>
 Neplatný zpětný odkaz Neplatný název třídy znaků Neplatný řadicí znak Neplatný obsah \{\} Neplatný předchozí regulární výraz Neplatný konec rozsahu Neplatný regulární výraz Spouštění programu jako „egrep“ je zastaralé; použijte „grep -E“.
 Spouštění programu jako „fgrep“ je zastaralé; použijte „grep -F“.
 Paměť vyčerpána Mike Haertel Žádná shoda Žádný předchozí regulární výraz VZOREK představuje množinu řetězců, každý na novém řádku.
 VZOREK představuje rozšířený regulární výraz (ERE).
 VZOREK představuje základní regulární výraz (BRE), pokud není řečeno jinak.
 Zabaleno kým: %s
 Zabaleno kým: %s (%s)
 Předčasný konec regulárního výrazu Regulární výraz je příliš velký Chyby distributora %s oznamujte (anglicky) na adresu: <%s>
 Hledá řádky, jejichž některé části vyhovují VZORKU. Řádky jsou čteny postupně
ze všech zadaných SOUBORů nebo ze standardního vstupu.
 Úspěch Závěrečné koncové lomítko Více informací získáte příkazem „%s --help“.
 Neznámá systémová chyba Nepárový ( nebo \( Nepárový ) nebo \) Nepárový [ nebo [^ Nepárový \{ Použití: %s [PŘEPÍNAČ]… VZOREK [SOUBOR]…
 Platné argumenty jsou: Je-li SOUBOR -, je čten standardní vstup. Ne-li SOUBOR zadán, je čten „.“,
je-li přítomen přepínač -r, jinak je čten standardní vstup. Jestliže jsou
zadány méně než dva SOUBORy, pak je implicitní parametr -h.
Návratový kód je 0 při nalezení vyhovujícího řádku, 1 nevyhovoval-li žádný
řádek. Vyskytne-li se chyba a není-li zadán argument -q, bude vrácen kód 2.
 Napsali(y) %s a %s.
 Napsali(y) %s, %s, %s,
%s, %s, %s, %s,
%s, %s a další.
 Napsali(y) %s, %s, %s,
%s, %s, %s, %s,
%s a %s.
 Napsali(y) %s, %s, %s,
%s, %s, %s, %s
a %s.
 Napsali(y) %s, %s, %s,
%s, %s, %s a %s.
 Napsali(y) %s, %s, %s,
%s, %s a %s.
 Napsali(y) %s, %s, %s,
%s a %s.
 Napsali(y) %s, %s, %s
a %s.
 Napsali(y) %s, %s a %s.
 Napsal(a) %s.
 „ nejednoznačný argument %s u %s zápis třídy znaků je [[:space:]], ne [:space:] zadány kolidující vzorky překročeno omezení PCRE na hloubku zanoření překročeno omezení PCRE na délku řádku návrat do prvotního pracovního adresáře se nezdařil vstupní soubor %s je rovněž výstupem počet vstupních řádků nelze spočítat (je jich hodně) vnitřní chyba vnitřní chyba (to by se nikdy nemělo stát) neplatný argument „%3$s“ u %1$s%2$s neplatný argument %s u %s neplatný třída znaků neplatný argument délky kontextu neplatný syntaxe vzorku %s neplatný maximální počet neplatná přípona argumentu „%3$s“ u %1$s%2$s posun v souboru (lseek) se nezdařil paměť vyčerpána syntaxe není určena další, vizte <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> smyčka pro rekurzivní průchod Volba -P není podporována. Tento program byl přeložen s --disable-perl-regexp. přepínač --map nic nedělá již od roku 2010 přepínač -P lze být použít pouze s jedním vzorkem nelze zaznamenat aktuální pracovní adresář nevyvážená ( nevyvážená ) nevyvážená [ neukončená escape sekvence \ neznámý typ binárního souboru neznámá metoda obsluhy zařízení varování: %s: %s chyba při zápisu 
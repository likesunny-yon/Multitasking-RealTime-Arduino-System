��    q      �  �   ,      �	  �   �	  �   Y
  /  $  �  T     $  /  9  %  i  �  �  Q  F  �  �  k  ,  G  �  %   �       0        K     h  ,   �  ,   �  ,   �  '     -   3      a  (   �  (   �     �     �       q        �     �     �  Q   �       ?   !     a     x     �     �  $   �     �        <     <   X     �     �     �     �  5   �  1     :   C     ~     �  #   �     �     �  3   �     -     5  &   H     o     �     �     �     �  (   �     �            ;   )   3   e   /   �   +   �   '   �   #   !     A!     a!     }!     �!     �!  4   �!     �!  "    "  !   #"  -   E"      s"     �"     �"     �"     �"     �"     #     -#     @#  $   R#     w#     �#     �#  >   �#     �#  P   $  -   R$  ,   �$  *   �$     �$     �$     �$     �$     %     -%     D%     T%  f  `%  �   �&  �   �'  5  �(  �  �)     �+  2  �+  L  -  �  N.  �  +0  �  �1  �  ]3  J  �4  %   C6     i6  5   �6  !   �6     �6  ,   �6  *   "7  ,   M7  &   z7  -   �7  !   �7  '   �7  '   8     A8     Y8     q8  u   s8     �8     �8     �8  M   9     d9  G   �9     �9     �9  (   �9     #:  &   <:     c:     ~:  ;   �:  ;   �:     ;     #;     0;  "   @;  <   c;  /   �;  @   �;     <     <  %   2<     X<     v<  9   �<     �<     �<  (   �<     =     /=     B=     U=  
   h=  %   s=     �=  )  �=     �>  8   �>  1   )?  -   [?  )   �?  %   �?  !   �?     �?     @     3@     C@     E@  8   c@      �@  %   �@  (   �@  ;   A     HA  %   eA     �A     �A     �A     �A      �A     B     B  '   4B     \B     nB     �B  <   �B     �B  `   �B  ,   MC  .   zC  (   �C     �C     �C     �C     �C     D     ,D     @D  
   QD     B   %   H   G   m           o          "           3   K      [         \               Z             ,       	       .   *   (   E       L          7   P   S              b   q       X                  #   g           n          ^      j   '   )   
           Y   +   e                ?   @   ]       >   A   h   =       f       i   4   D   1       a   8   p   :   d       V      R   0   c          k      C             T   M          -   5   _   J   U   l   /   I   O   Q   !   &                2   <   N       6       `   W           F   9   ;       $                   
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
 ` ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified exceeded PCRE's backtracking limit exceeded PCRE's line length limit failed to return to initial working directory input file %s is also the output input is too large to count internal error invalid %s%s argument '%s' invalid argument %s for %s invalid character class invalid context length argument invalid matcher %s invalid max count invalid suffix in %s%s argument '%s' lseek failed memory exhausted no syntax specified others, see <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> recursive directory loop support for the -P option is not compiled into this --disable-perl-regexp binary the --mmap option has been a no-op since 2010 the -P option only supports a single pattern unable to record current working directory unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unknown binary-files type unknown devices method warning: %s: %s write error Project-Id-Version: grep-2.14
Report-Msgid-Bugs-To: bug-grep@gnu.org
POT-Creation-Date: 2014-01-01 20:44-0800
PO-Revision-Date: 2012-11-01 02:12+0100
Last-Translator: Ask Hjorth Larsen <asklarsen@gmail.com>
Language-Team: Danish <dansk@dansk-gruppen.dk>
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8-bit
 
Styring af kontekst:
  -B, --before-context=ANTAL  udskriv ANTAL linjer af foregående tekst
  -A, --after-context=ANTAL  udskriv ANTAL linjer af efterfølgende tekst
  -C, --context=ANTAL       udskriv ANTAL linjer af omgivende tekst
 
GPLv3+-licens: GNU GPL version 3 eller senere <http://gnu.org/licenses/gpl.html>

Dette er fri software: du kan frit ændre og videredistribuere det.
Der gives INGEN GARANTI, i den grad som loven tillader det.

 
Diverse:
  -s, --no-messages         undertryk fejlmeddelser
  -v, --invert-match        vælg linjer der ikke passer
  -V, --version             udskriv versionsinformation og afslut
      --help                vis denne hjælpetekst og afslut
      --mmap                forældet no-op; giver en advarsel
 
Styring af udskrift:
  -m, --max-count=ANTAL      stands efter ANTAL træffere
  -b, --byte-offset          udskriv startpunkt i byte sammen med fundne linjer
  -n, --line-number          udskriv linjenummer sammen med linjerne
      --line-buffered        tøm uddatabuffer for hver linje
  -H, --with-filename        udskriv filnavnet for hver træffer
  -h, --no-filename          undertryk indledende filnavn i udskrift
      --label=NAVN           udskriv NAVN som filnavn for standard-inddata
 
Rapportér fejl til: %s
       --include=FILMØNSTER  søg kun i filer, der matcher FILMØNSTER
      --exclude=FILMØNSTER  ignorér filer og kataloger, der matcher FILMØNSTER
      --exclude-from=FIL    ignorér filer, der matcher ethvert mønster fra FIL
      --exclude-dir=MØNSTER  ignorér kataloger, der matcher MØNSTER.
   -E, --extended-regexp     MØNSTER er et udvidet regulært udtryk (ERE)
  -F, --fixed-strings       MØNSTER er en mængde faste strenge adskilt af
                            linjeskift
  -G, --basic-regexp        MØNSTER er et almindeligt regulært udtryk (BRE)
  -P, --perl-regexp         MØNSTER er et Perl-regulært udtryk
   -I                        svarer til --binary-files=without-match
  -d, --directories=HANDLING  hvordan kataloger skal håndteres;
                            HANDLING er 'read', 'recurse', eller 'skip'
  -D, --devices=HANDLING    hvordan enheder, FIFO'er og sokler skal håndteres;
                            HANDLING er 'read' eller 'skip'
  -r, --recursive           svarer til --directories=recurse
  -R, --dereference-recursive  tilsvarende, men følg alle symlænker
   -L, --files-without-match  udskriv kun navne på FILer uden træffere
  -l, --files-with-matches  udskriv kun navne på FILer med træffere
  -c, --count               udskriv kun antallet af linjer, der matcher, for 
                              hver FIL
  -T, --initial-tab         arrangér tabulatortegn (om nødvendigt)
  -Z, --null                udskriv 0-byte efter FILnavn
   -ANTAL                    det samme som --context=ANTAL
      --color[=HVORNÅR],
      --colour[=HVORNÅR]    brug farvemarkering til at fremhæve træffere;
                            HVORNÅR er 'always', 'never', eller 'auto'
  -U, --binary              fjern ikke CR-tegn ved EOL (MSDOS/Windows)
  -u, --unix-byte-offsets   rapportér forskydninger som om CR-tegn ikke var 
                            der (MSDOS/Windows)

   -e, --regexp=MØNSTER      brug MØNSTER i søgning
  -f, --file=FIL            tag MØNSTER fra FIL
  -i, --ignore-case         ignorér forskelle mellem store og små bogstaver
  -w, --word-regexp         få MØNSTER til at træffe på kun hele ord
  -x, --line-regexp         få MØNSTER til at træffe på kun hele linjer
  -z, --null-data           en datalinje slutter med en 0-byte, ikke linjeskift
   -o, --only-matching       vis kun den del af en linje, der matcher MØNSTER
  -q, --quiet, --silent     undertryk al normal udskrift
      --binary-files=TYPE   antag at binære filer er TYPE;
                            TYPE er 'binary', 'text', eller 'without-match'
  -a, --text                svarer til --binary-files=text
 %s kan kun bruge %s-mønstersyntaksen Hjemmeside for %s: <%s>
 Hjemmeside for %s: <http://www.gnu.org/software/%s/>
 %s%s-argumentet '%s' er for stort %s: ugyldigt flag -- '%c'
 %s: flaget '%c%s' tillader ikke et argument
 %s: flaget '%s' er flertydigt; muligheder: %s: flaget '--%s' tillader ikke et argument
 %s: flaget '--%s' kræver et argument
 %s: flaget '-W %s' tillader ikke et argument
 %s: flaget '-W %s' er flertydigt
 %s: flaget '-W %s' kræver et argument
 %s: flaget kræver et argument -- '%c'
 %s: ukendt flag '%c%s'
 %s: ukendt flag '--%s'
 ' 'egrep' betyder 'grep -E'.  'fgrep' betyder 'grep -F'.
Direkte kørsel som enten 'egrep' eller 'fgrep' er forældet.
 © (standard-inddata) Binær fil %s stemmer
 Eksempel: %s -i 'hej verden' menu.h main.c

Regulære udtryk og fortolkning:
 Hjemmeside for GNU Grep: <%s>
 Generel hjælp til brug af GNU-software: <http://www.gnu.org/gethelp/>
 Ugyldig bagudreference Ugyldigt tegnklassenavn Ugyldigt samletegn (collation character) Ugyldigt indhold af \{\} Ugyldigt foranstillet regulært udtryk Ugyldig intervalafslutning Ugyldigt regulært udtryk Kørsel som 'egrep' er forældet; brug 'grep -E' i stedet.
 Kørsel som 'fgrep' er forældet; brug 'grep -F' i stedet.
 Hukommelse opbrugt Mike Haertel Ingen træffere Intet foregående regulært udtryk MØNSTER er en mængde faste strenge adskilt af linjeskift.
 MØNSTER er et udvidet regulært udtryk (ERE).
 MØNSTER er som standard et almindeligt regulært udtryk (BRE).
 Pakket af %s
 Pakket af %s (%s)
 Utidig afslutning af regulært udtryk Regulært udtryk er for stort Rapportér fejl i %s til: %s
 Søg efter MØNSTER i hver FIL eller i standard-inddata.
 Succes Afsluttende omvendt skråstreg Prøv '%s --help' for mere information.
 Ukendt systemfejl Uparret ( eller \( Uparret ) eller \) Uparret [ eller [^ Uparret \{ Brug: %s [FLAG]... MØNSTER [FIL]...
 Gyldige argumenter er: Når FIL er -, læses standard-inddata.  Uden fil læses . hvis -r er givet på
kommandolinjen, ellers -.  Hvis mindre end to FILer er givet, antages -h.
Afslutningsstatus er 0 hvis mindst én linje blev valgt, ellers 1; hvis der
opstår nogen fejl, og -q ikke blev givet, er afslutningsstatus 2.
 Skrevet af %s og %s.
 Skrevet af %s, %s, %s,
%s, %s, %s, %s,
%s, %s og andre.
 Skrevet af %s, %s, %s,
%s, %s, %s, %s,
%s og %s.
 Skrevet af %s, %s, %s,
%s, %s, %s, %s
og %s.
 Skrevet af %s, %s, %s,
%s, %s, %s og %s.
 Skrevet af %s, %s, %s,
%s, %s og %s.
 Skrevet af %s, %s, %s,
%s og %s.
 Skrevet af %s, %s, %s
og %s.
 Skrevet af %s, %s og %s.
 Skrevet af %s.
 ' flertydigt argument %s til %s syntaksen for tegnklasser er [[:space:]], ikke [:space:] modstridende søgeudtryk angivet overskred tilbagerækkevidde for PCRE overskred maksimal linjelængde for PCRE kunne ikke vende tilbage til det oprindelige arbejdskatalog indfilen %s er også udfilen inddata er for omfattende at optælle intern fejl ugyldigt %s%s-argument '%s' ugyldigt argument %s til %s ugyldig tegnklasse ugyldigt kontekstlængdeargument ugyldig matcher %s ugyldig angivelse af maksimum ugyldigt suffiks i %s%s-argumentet '%s' lseek mislykkedes hukommelse opbrugt ingen syntaks angivet andre, se <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> rekursiv katalogsløjfe understøttelse for flaget -P er ikke kompileret ind i denne binærfil for --disable-perl-regexp tilvalget --mmap har været no-op siden 2010 flaget -P understøtter kun et enkelt mønster kan ikke gemme nuværende arbejdskatalog ubalanceret ( ubalanceret ) ubalanceret [ ufærdig \-undvigesekvens ukendt binær filtype ukendt enhedsmetode advarsel: %s: %s skrivefejl 
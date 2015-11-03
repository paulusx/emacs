This package provides more intuitive fuzzy matching behavior for Helm.
For best results, you should also install the 'helm-flx' package.

Usage:

  (require 'helm-fuzzier)
  (helm-fuzzier-mode 1)

Queries should begin with the same letter as the desired match and
should form an abbreviation of two or more word prefixes contained
in the match.

Examples:

- 'emacs-lisp-mode' can be matched by 'el','em', 'elm', 'eli', 'elmo', etc'.
- 'helm-candidate-number-limit' can be matched by 'hcn','hnl', 'hecl', etc'.
-'package-list-packages' can be matched by 'plp','plpa', 'paclp', etc'.


Discussion:

(As of Oct 2015) Helm's support for fuzzy matching breaks down when
the number of matches exceeds its internal limit
'helm-candidate-number-limit'. Helm will only look until it finds
the first LIMIT matches, no matter how good they are and then
stop. The result is that the best matches are often not included in
the results.

Helm additionally separates *matching* from *scoring* into separate
phases.  the former simply collects LIMIT matches of whatever
quality, the later sorts them from best to worst according to some
heuristic.

'helm-fuzzier' augments helm's default *matching* phase with an additional
*preferred matching* that runs first, examines _all candidates_ and ensures
that any "preferred matches" found make it into the shortlist for scoring
and presentation to the user. "preferred matches" are candidates which are
not only "matches" in a lexical sense but that are also likely to be scored
highly by the *scoring* phase. By giving these matches precedence, and
including them in the match list before the quota is filled with low-quality
matches, the final quality of the results presented to the user is improved,
and your are likely to see that match you were looking for more often and
using shorter queries.

For preferred matching to produce good results there must be good agreement
between what it and what the *scoring* function consider a "good match".
'helm-fuzzier' was written (and tested) for use with the new 'helm-flx' package
recently added to MELPA (by @PythonNut), which enhances Helm's *scoring* phase
by using @lewang's 'flx' library.

It is __highly recommended__ that you use both 'helm-fuzzier' and 'helm-flx'
packages together for the best fuzzy matching results.

Together they provide excellent fuzzy matching, even for short queries, and without
requiring that a large value be set for 'helm-candidate-number-limit'.

Your query should begin with the initial letter of the match you're looking for,
and should be an abbreviation of the match, formed by concatenating one or more
letters from its word prefixes, in order.

Examples:

Queries matching 'emacs-lisp-mode' : 'el','em', 'elm', 'eli', 'elmo', etc'.
Queries matching 'helm-candidate-number-limit' : 'hcn','hnl', 'hecl', etc'.
Queries matching 'package-list-packages' : 'plp','plpa', 'paclp', etc'.

Take a look at the 'helm-fuzzier-preferred-max-group-length' option for
some control over this behavior.

Performance:

The additional pass is more expensive but I've found that it is hardly
noticeable even on modest hardware. helm-fuzzier only kicks in for
source for which fuzzy-matching is enabled, so be sure to turn it on
using helm's *-fuzzy-match boolean custom options.

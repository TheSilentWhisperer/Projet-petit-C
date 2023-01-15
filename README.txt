La commande make fonctionne comme demandé dans le sujet, on peut ensuite lancer les tests avec la commande ./test -allb ./petitc.
Le sujet a été traité exhaustivement et le compilateur se comporte comme prévu sur l'intégralité des tests fournis.

Le projet se sépare en plusieurs fichiers, un fichier lexer pour le lexer et un fichier parser pour le parser.
Le fichier ast contient la définition de tous les arbres de syntaxe abstraite produits. 
Il contient aussi le code des fonctions utilisées pour le typage.
Enfin, le fichier pdc (production de code) contient le code pour les fonctions utilisées pour l'allocation et la compilation définitive du programme.
Lors de l'allocation, tous les identifiants de variables sont remplacés par leur position sur la pile et leur profondeur pour gérer les fonctions imbriquées.
Les identifiants de fonctions sont quant à eux conservés mais on précise pour une fonction la taille de son tableau d'activation et sa profondeur.

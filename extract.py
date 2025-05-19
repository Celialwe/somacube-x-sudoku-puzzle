# clingo_extract_facts.py
import sys

# clingo_extract_facts.py
import sys
def extract_facts(clingo_out, facts_out):
    tried_encodings = ['utf-8-sig', 'utf-16', 'utf-8']
    for enc in tried_encodings:
        try:
            with open(clingo_out, encoding=enc) as infile, open(facts_out, 'w', encoding='utf-8') as outfile:
                keep_next = False
                for line in infile:
                    if line.strip() == "ANSWER":
                        keep_next = True
                        continue
                    if keep_next:
                        facts = line.strip()
                        if facts and facts.endswith('.'):
                            outfile.write(facts + '\n')
                        keep_next = False
            print(f"[OK] Extraction avec encodage {enc}")
            return
        except UnicodeDecodeError:
            pass
    print("Erreur: Impossible de lire le fichier, même en essayant plusieurs encodages.")



if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Utilisation : python extract.py <sortie_clingo.txt> <faits.lp>")
    else:
        extract_facts(sys.argv[1], sys.argv[2])
        print(f"Extraction terminée dans {sys.argv[2]}")

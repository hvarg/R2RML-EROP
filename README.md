# R2RML-EROP
A R2RML map from Erop SQL database to RDF. 
We want to include the dataset into Bio2RDF project.

The next table presents the map between the current Erop SQL database and RDF.

| Name         | Details                              | New type  | Note                             |
| ------------ | ------------------------------------ | --------- | -------------------------------- |
| `row_id`     | Row's ID                             | `NULL`    | Skip                             |
| `erop_nmb_k` | EROP accession                       | `URI`     | Principal resource               |
| `date_____k` | Creation date                        | `date`    | Wrong format                     |
| `date_m___k` | Modification date                    | `date`    | Wrong format                     |
| `fam_nmb__k` | [FASD] Structural family number      | `decimal` |                                  |
| `fam_name_k` | [FASD] Structural family name        | `string`  |                                  |
| `pep_nmb__k` | Oligopeptide number                  | `decimal` | *hidden*                         |
| `pep_name_k` | Oligopeptide name                    | `string`  |                                  |
| `f`          | Always NULL                          | `NULL`    | Skip                             |
| `species__k` | [FS] All organism sources            | `URI`     | Can be parsed                    |
| `all_kar__k` | [FS] Karyote (max 2 of 3)            | `URI`     | Map in `./karyote`               |
| `all_kgd__k` | [FS] Kingdom (max 3 of 6)            | `URI`     | Map in `./kingdom`               |
| `all_phyl_k` | [FS] Phylum (max 5 of 27)            | `URI`     | Map in `./phylum`                |
| `all_b_cl_k` | [FS] Class (max 6 of 62)             | `URI`     | Map in `./class`                 |
| `all_tiss_k` | [FS] Tissue/organ/cell/secreted      | `string`  |                                  |
| `func_cl__k` | [FFD] Function Class (6 of 169)      | `string`  | Map in `./function`              |
| `function_k` | [FFD] Function                       | `string`  |                                  |
| `fragment_k` | `(N|Y| |NULL)`                       | `NULL`    | Skip                             |
| `aar_sum__k` | [FASD] Aminoacid Number              | `float`   |                                  |
| `tsr_sum__k` | [FASD] Radical Number                | `float`   |                                  |
| `m_w______k` | [FASD] Experimental Molecular Mass   | `float`   |                                  |
| `m_w_c____k` | [FASD] Calculated Molecular Mass     | `float`   |                                  |
| `pi_______k` | [FASD] Experimental pI               | `float`   |                                  |
| `pi_c_____k` | [FASD] Calculated pI                 | `float`   |                                  |
| `spat_pm__k` | [FASD] Spacial structure PMID        | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `synth_pm_k` | [FASD] Synthesis PMID                | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `content__k` | [FS] Content                         | `string`  |                                  |
| `seq_1____k` | [FASD] Sequence                      | `string`  | Remove empty spaces              |
| `syn_name_v` | Synonyms                             | `string`  | Can be parsed, comma separated   |
| `part_of__v` | [FASD] Precursor                     | `string`  |                                  |
| `taxon____v` | [FS] Taxon                           | `string`  |                                  |
| `ss_y_____v` | `(Y| |NULL)`                         | `NULL`    | Skip                             |
| `ss_bonds_v` | `[FASD] S-S bond`                    | `string`  |                                  |
| `ss_b_pm__v` | [FASD] S-S bond PMID                 | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `n_stnd_y_v` | `(N|Y| |NULL)`                       | `NULL`    | Skip                             |
| `n_stnd_r_v` | [FASD] Post translation mod (s)      | `string`  |                                  |
| `n_std_pm_v` | [FASD] Post translation mod PMID     | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `seq_refa_v` | [FASDR] Author                       | `string`  |                                  |
| `seq_reft_v` | [FASDR] Title                        | `string`  |                                  |
| `seq_refj_v` | [FASDR] Journal                      | `string`  |                                  |
| `seq_refy_v` | [FASDR] Year                         | `date`    |                                  |
| `seq_refspv` | [FASDR] SwissProt accession          | `URI`     |                                  |
| `seq_refsav` | [FASDR] SwissProt creation date      | `NULL`    | Skip (*hidden*)                  |
| `seq_refmlv` | [FASDR] Pubmed PMID                  | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `seq_refmav` | [FASDR] SwissProt mod date           | `NULL`    | Skip (*hidden*)                  |
| `nuc_refa_v` | [FNSDR] Author                       | `string`  |                                  |
| `nuc_reft_v` | [FNSDR] Title                        | `string`  |                                  |
| `nuc_refj_v` | [FNSDR] Journal                      | `string`  |                                  |
| `nuc_refy_v` | [FNSDR] Year                         | `date`    |                                  |
| `nuc_refspv` | [FNSDR] SwissProt accession          | `URI`     |                                  |
| `nuc_refsav` | [FNSDR] SwissProt creation date      | `NULL`    | Skip (*hidden*)                  |
| `nuc_refmlv` | [FNSDR] Pubmed PMID                  | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `nuc_refmav` | [FNSDR] SwissProt mod date           | `NULL`    | Skip (*hidden*)                  |
| `xerox____v` | `(T|F|D|P|N|NULL)`                   | `NULL`    | Skip                             |
| `pdf______v` | `(T|F|D|P|N|NULL)`                   | `NULL`    | Skip                             |
| `comments_v` | Comments                             | `string`  |                                  |
| `year_seq_v` | Erop year                            | `date`    | Redundant                        |
| `country__v` | [FASDR] Country                      | `string`  | Seems inconsistent.              |
| `complete_v` | ? (hidden)                           | `NULL`    | Skip                             |

To create resources for internal references we use the hash of year+title.

## About acronyms
**FS:** First Source of the oligopeptide

**FFD:** First Function Determination.

**FACD:** First Aminoacid Sequence Determination.

**FACDR:** First Aminoacid Sequence Determination Reference.

**FNCDR:** First Nucleotide Sequence Determination Reference.

## Domains
**Karyote:** `Eukaryota`, `Akaryota`, `Pro(k|c)aryota`

**Kingdom:** `Animalia`, `Viridae`, `Bacteria`, `Plantae`, `Fungi`, `Cyanobacteria`

**Phylum:** `Algae`, `Annelida`, `Arthropoda`, `Arthropodan`, `Ascomycota`, `Basidiomycota`, `Bryophyta`, `Chlorophyta`, `Chordata`, `Cnidaria`, `Cyanobacteria`, `Echinodermata`, `Eubacteria`, `Halobacteriales`, `Mollicutes`, `Mollusca`, `Mucoromycotina`, `Nematoda`, `Platyhelminthes`, `Porifera`, `Protista`, `Protochordata`, `Protozoa`, `Spermatophyta`, `Zygomycota`, `dsDNA-containing virus`, `ssRNA-containing virus`

**Class:**  `Adenoviridae`, `Agaricomycetidae`, `Alariaceae`, `Amphibia`, `Angiospermae`, `Anthozoa`, `Arachnida`, `Ascidiacea`, `Asteroidea`, `Aves`, `Bacillariophita`, `Baculoviridae`, `Bivalva`, `Branchiostomidae`, `Bryopsida`, `Cactaceae`, `Caphalopoda`, `Caudovirales`, `Caudoviridae`, `Cephalopoda`, `Cestoda`, `Chlorophyta`, `Ciliophora`, `Crustacea`, `Demospongiae`, `Dothideomycetes`, `Echinoidea`, `Entamoeba`, `Eurotiomycetes`, `Gastropoda`, `Gram-negative bacteri(a|um)`, `Gram-positive bacterium`, `Halobacteriacae`, `Hirudinea`, `Holothuroidea`, `Hordeiviridae`, `Hydrozoa`, `Hymenomycetes`, `Insecta`, `Mammalia`, `(Mollusca|mollusk)`, `Myoviridae`, `Oligochaeta`, `Orthomyxoviridae`, `Paramyxoviridae`, `Philariasis`, `Phytoplasma`, `Pisces`, `Polychaeta`, `Reptilia`, `Retroviridae`, `Saccharomycetes`, `Schizosaccharomycetes`, `Scyphozoa`, `Secernentea`, `Sequiviridae`, `Sordariomycetes`, `Trematoda`, `Turbellaria`, `Urediniomycetes`, `Ustilaginomycetes`, `Zygomycets`

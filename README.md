# R2RML-EROP
R2RML map from Erop SQL database to RDF. 
We want to include the dataset to Bio2RDF project.

The next table presents the map between the current Erop SQL database and RDF.

| Column name  | Details                                      | New type  | Note                             |
| ------------ | -------------------------------------------- | --------- | -------------------------------- |
| `row_id`     | Row's ID                                     | `NULL`    | Skip                             |
| `erop_nmb_k` | EROP accession                               | `string`  |                                  |
| `date_____k` | Creation date                                | `date`    | Wrong format                     |
| `date_m___k` | Modification date                            | `date`    | Wrong format                     |
| `fam_nmb__k` | [FASD] Structural family number              | `decimal` |                                  |
| `fam_name_k` | [FASD] Structural family name                | `string`  |                                  |
| `pep_nmb__k` | Oligopeptide number (hidden)                 | `decimal` |                                  |
| `pep_name_k` | Oligopeptide name                            | `string`  |                                  |
| `f`          | Always NULL                                  | `NULL`    | Skip                             |
| `species__k` | [FS] All organism sources                    | `URI`     | Can be parsed                    |
| `all_kar__k` | [FS] Karyote (max 2 of 3)                    | `URI`     | Map                              |
| `all_kgd__k` | [FS] Kingdom (max 3 of 6)                    | `URI`     | Map                              |
| `all_phyl_k` | [FS] Phylum (max 5 of 27)                    | `URI`     | Map                              |
| `all_b_cl_k` | [FS] Class (max 6 of 62)                     | `URI`     | Map                              |
| `all_tiss_k` | [FS] Tissue/organ/cell/secreted              | `string`  |                                  |
| `func_cl__k` | [FFD] Function Class (6 of 169)              | `string`  | Can be parsed *TODO*             |
| `function_k` | [FFD] Function                               | `string`  |                                  |
| `fragment_k` | (N|Y| |NULL)                                 | `NULL`    | Skip                             |
| `aar_sum__k` | [FASD] Aminoacid Number                      | `float`   |                                  |
| `tsr_sum__k` | [FASD] Radical Number                        | `float`   |                                  |
| `m_w______k` | [FASD] Experimental Molecular Mass           | `float`   |                                  |
| `m_w_c____k` | [FASD] Calculated Molecular Mass             | `float`   |                                  |
| `pi_______k` | [FASD] Experimental pI                       | `float`   |                                  |
| `pi_c_____k` | [FASD] Calculated pI                         | `float`   |                                  |
| `spat_pm__k` | [FASD] Pubmed spacial structure PMID         | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `synth_pm_k` | [FASD] Pubmed synthesis PMID                 | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `content__k` | [FS] Content                                 | `string`  |                                  |
| `seq_1____k` | [FASD] Sequence                              | `string`  | Remove empty spaces              |
| `syn_name_v` | Synonyms                                     | `string`  | Can be parsed, comma separated   |
| `part_of__v` | [FASD] Precursor                             | `string`  |                                  |
| `taxon____v` | [FS] Taxon                                   | `string`  |                                  |
| `ss_y_____v` | (Y| |NULL)                                   | `NULL`    | Skip                             |
| `ss_bonds_v` | [FASD] S-S bond                              | `string`  |                                  |
| `ss_b_pm__v` | [FASD] Pubmed S-S bond PMID                  | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `n_stnd_y_v` | (N|Y| |NULL)                                 | `NULL`    | Skip                             |
| `n_stnd_r_v` | [FASD] Post translation modification(s)      | `string`  |                                  |
| `n_std_pm_v` | [FASD] Post translation mod PMID             | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `seq_refa_v` | [FASDR] Author                               | `string`  |                                  |
| `seq_reft_v` | [FASDR] Title                                | `string`  |                                  |
| `seq_refj_v` | [FASDR] Journal                              | `string`  |                                  |
| `seq_refy_v` | [FASDR] Year                                 | `date`    |                                  |
| `seq_refspv` | [FASDR] SwissProt accession                  | `URI`     |                                  |
| `seq_refsav` | [FASDR] SwissProt creation date (hidden)     | `NULL`    | Skip                             |
| `seq_refmlv` | [FASDR] Pubmed PMID                          | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `seq_refmav` | [FASDR] SwissProt modification date (hidden) | `NULL`    | Skip                             |
| `nuc_refa_v` | [FNSDR] Author                               | `string`  |                                  |
| `nuc_reft_v` | [FNSDR] Title                                | `string`  |                                  |
| `nuc_refj_v` | [FNSDR] Journal                              | `string`  |                                  |
| `nuc_refy_v` | [FNSDR] Year                                 | `date`    |                                  |
| `nuc_refspv` | [FNSDR] SwissProt accession                  | `URI`     |                                  |
| `nuc_refsav` | [FNSDR] SwissProt creation date (hidden)     | `NULL`    | Skip                             |
| `nuc_refmlv` | [FNSDR] Pubmed PMID                          | `URI`     | http://bio2rdf.org/pubmed:{PMID} |
| `nuc_refmav` | [FNSDR] SwissProt modification date (hidden) | `NULL`    | Skip                             |
| `xerox____v` | (T|F|D|P|N|NULL)                             | `NULL`    | Skip                             |
| `pdf______v` | (T|F|D|P|N|NULL)                             | `NULL`    | Skip                             |
| `comments_v` | Comments                                     | `string`  |                                  |
| `year_seq_v` | Erop year                                    | `date`    |                                  |
| `country__v` | [FASDR] Country                              | `string`  | Seems inconsistent.              |
| `complete_v` | ? (hidden)                                   | `NULL`    | Skip                             |

To create resources for internal references we use the hash of year+title.

## About acronyms
FS: First Source of the oligopeptide
FACD: First Aminoacid Sequence Determination.
FACDR: First Aminoacid Sequence Determination Reference.
FNCDR: First Nucleotide Sequence Determination Reference.

## Domain of..
*Karyote:* `Eukaryota`, `Akaryota`, (`Prokaryota`|`Procaryota`)
*Kingdom:* `Animalia`, `Viridae`, `Bacteria`, `Plantae`, `Fungi`, `Cyanobacteria`
*Phylum:* `Algae`, `Annelida`, `Arthropoda`, `Arthropodan`, `Ascomycota`, `Basidiomycota`, `Bryophyta`, `Chlorophyta`, `Chordata`, `Cnidaria`, `Cyanobacteria`, `Echinodermata`, `E{1,2}ubacteria`, `Halobacteriales`, `Mollicutes`, `Mollusca`, `Mucoromycotina`, `Nematoda`, `Platyhelminthes`, `Porifera`, `Protista`, `Protochordata`, `Protozoa`, `Spermatophyta`, `Zygomycota`, `dsDNA-containing virus`, `ssRNA-containing virus`
*Class:*  `Adenoviridae`, `Agaricomycetidae`, `Alariaceae`, `Amphibia`, `Angiospermae`, `Anthozoa`, `Arachnida`, `Ascidiacea`, `Asteroidea`, `Aves`, `Bacillariophita`, `Baculoviridae`, `Bivalv(a|ia)`, `Branchiostomidae`, `Bryopsida`, `Cactaceae`, `Caphalopoda`, `Caudovirales`, `Caudoviridae`, `Cephalopoda`, `Cestoda`, `Chlorophyta`, `Ciliophora`, `Crustacea`, `Demospongiae`, `Dothideomycetes`, `Echinoidea`, `Entamoeba`, `Eurotiomycetes`, `Gastropoda`, `Gram-negative bacteri(a|um)`, `Gram-positive bacterium`, `Halobacteriacae`, `Hirudinea`, `Holothuroidea`, `Hordeiviridae`, `Hydrozoa`, `Hymenomycetes`, `Insecta`, `Mammalia`, `(Mollusca|mollusk)`, `Myoviridae`, `Oligochaeta`, `Orthomyxoviridae`, `Paramyxoviridae`, `Philariasis`, `Phytoplasma`, `Pisces`, `Polychaeta`, `Reptil(aia|ia|ian)`, `Retroviridae`, `Saccharomycetes`, `Schizosaccharomycetes`, `Scyp(hozoa|ozoa)`, `Secernentea`, `Sequiviridae`, `Sordariomycete(s|s_)`, `Trematoda`, `Turbellaria`, `Urediniomycetes`, `Ustilaginomycetes`, `Zygomycets`


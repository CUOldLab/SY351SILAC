#' SY351SILAC
#' A data package for the phosphoproteomic and proteomic data sets published in Poss, ... Old, Taatjes and
#' scientists at Syros, using the Syros' CDK7 inhibitor SY-351. HL-60 cells were treated with inhibitor, followed by
#' SILAC (Light:Heavy) phosphoproteomics and proteomics analysis with TiO2 phosphopeptide enrichment and multidimensional 
#' LC/MS/MS Fusion Orbitrap (Old Lab).
#' @docType package
#' @aliases SY351SILAC-package
#' @title Identification of CDK7 substrates with Syros' inhibitor SY-351 in HL-60 cells, using SILAC Phosphoproteomics
#' @name SY351SILAC
#' @description R data package containing data for phosphorylation site and protein-level SILAC ratios (L:H) 
#'     from the MaxQuant PhosphoSTY.txt (and ProteinGroups.txt) files, which have also been processed with Perseus
#'     to add site-level and protein-level annotations.
#' @details Use \code{data(package='SY351SILAC')$results[, 3]} to see a list of available data sets in this data package
#'     and/or DataPackageR::load_all
#' _datasets() to load them.
#' @seealso
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL




#' Design matrix for empirical Bayes moderated t-test analysis of +/- SY351 SILAC phosphopeptide ratios
#' @name design.isotopeffect
#' @docType data
#' @title Design matrix for empirical Bayes moderated t-test analysis of +/- SY351 SILAC phosphopeptide ratios
#' @format a \code{matrix} containing the following fields:
#' \describe{
#' }
#' @source The data comes from Old & Taatjes labs.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL



#' A data frame table (tibble) of the phosphorylation site-level SILAC ratios. 
#' The data frame is a tbl_df or tibble - see dplyr package and tidyverse in general for info)
#' @name phosphosites
#' @docType data
#' @title Phosphorylation site-level SILAC ratios.
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{null}{H:L SILAC ratio for DMSO:DMOS null condition}
#' \item{rep1}{H:L SILAC ratios for SY-351(Heavy):DMSO(Light) biological replicate comparison 1}
#' \item{rep2}{H:L SILAC ratios for SY-351(Heavy):DMSO(Light) biological replicate comparison 2}
#' \item{rep3LF}{Label swap H:L SILAC ratios for DMSO(Heavy):SY-351(Light) biological replicate comparison 3}
#' \item{Amino.acid}{}
#' \item{Charge}{}
#' \item{Reverse}{}
#' \item{Potential.contaminant}{}
#' \item{Multiplicity}{}
#' \item{Known.site}{}
#' \item{Origin}{}
#' \item{Regulatory.site}{}
#' \item{Regulatory.site.function}{}
#' \item{Regulatory.site.process}{}
#' \item{Regulatory.site.protInteract}{}
#' \item{Regulatory.site.otherInteract}{}
#' \item{Regulatory.site.notes}{}
#' \item{Motifs}{}
#' \item{Pfam.domains}{}
#' \item{active.site}{}
#' \item{binding.site}{}
#' \item{calcium.binding.region}{}
#' \item{chain}{}
#' \item{coiled.coil.region}{}
#' \item{compositionally.biased.region}{}
#' \item{cross.link}{}
#' \item{disulfide.bond}{}
#' \item{dna.binding.region}{}
#' \item{domain}{}
#' \item{glycosylation.site}{}
#' \item{helix}{}
#' \item{initiator.methionine}{}
#' \item{intramembrane.region}{}
#' \item{lipid.moiety.binding.region}{}
#' \item{metal.ion.binding.site}{}
#' \item{modified.residue}{}
#' \item{mutagenesis.site}{}
#' \item{non.consecutive.residues}{}
#' \item{non.standard.amino.acid}{}
#' \item{non.terminal.residue}{}
#' \item{nucleotide.phosphate.binding.region}{}
#' \item{peptide}{}
#' \item{propeptide}{}
#' \item{region.of.interest}{}
#' \item{repeat.}{}
#' \item{sequence.conflict}{}
#' \item{sequence.variant}{}
#' \item{short.sequence.motif}{}
#' \item{signal.peptide}{}
#' \item{site}{}
#' \item{splice.variant}{}
#' \item{strand}{}
#' \item{topological.domain}{}
#' \item{transit.peptide}{}
#' \item{transmembrane.region}{}
#' \item{turn}{}
#' \item{unsure.residue}{}
#' \item{zinc.finger.region}{}
#' \item{Localization.prob}{}
#' \item{PEP}{}
#' \item{Score}{}
#' \item{Delta.score}{}
#' \item{Score.for.localization}{}
#' \item{Mass.error..ppm.}{}
#' \item{Intensity}{}
#' \item{Intensity.L}{}
#' \item{Intensity.H}{}
#' \item{Position}{}
#' \item{Score.diff}{}
#' \item{Localization.prob.null}{}
#' \item{Score.diff.null}{}
#' \item{PEP.null}{}
#' \item{Score.null}{}
#' \item{Localization.prob.rep1}{}
#' \item{Score.diff.rep1}{}
#' \item{PEP.rep1}{}
#' \item{Score.rep1}{}
#' \item{Localization.prob.rep2}{}
#' \item{Score.diff.rep2}{}
#' \item{PEP.rep2}{}
#' \item{Score.rep2}{}
#' \item{Localization.prob.rep3LF}{}
#' \item{Score.diff.rep3LF}{}
#' \item{PEP.rep3LF}{}
#' \item{Score.rep3LF}{}
#' \item{Position.in.peptide}{}
#' \item{Ratio.H.L}{}
#' \item{Ratio.H.L___1}{}
#' \item{Ratio.H.L___2}{}
#' \item{Ratio.H.L___3}{}
#' \item{Ratio.H.L.normalized}{}
#' \item{Ratio.H.L.normalized___1}{}
#' \item{Ratio.H.L.normalized___2}{}
#' \item{Ratio.H.L.normalized___3}{}
#' \item{Ratio.H.L.unmod..pep.}{}
#' \item{Ratio.H.L.localized}{}
#' \item{Ratio.H.L.nmods}{}
#' \item{Ratio.H.L.variability....}{}
#' \item{Ratio.H.L.count}{}
#' \item{Ratio.H.L.iso.count}{}
#' \item{Ratio.H.L.type}{}
#' \item{Occupancy.L}{}
#' \item{Occupancy.H}{}
#' \item{Ratio.H.L.null}{}
#' \item{Ratio.H.L.null___1}{}
#' \item{Ratio.H.L.null___2}{}
#' \item{Ratio.H.L.null___3}{}
#' \item{Ratio.H.L.unmod..pep..null}{}
#' \item{Ratio.H.L.localized.null}{}
#' \item{Ratio.H.L.nmods.null}{}
#' \item{Ratio.H.L.variability.....null}{}
#' \item{Ratio.H.L.count.null}{}
#' \item{Ratio.H.L.iso.count.null}{}
#' \item{Ratio.H.L.type.null}{}
#' \item{Occupancy.L.null}{}
#' \item{Occupancy.H.null}{}
#' \item{Ratio.H.L.rep1}{}
#' \item{Ratio.H.L.rep1___1}{}
#' \item{Ratio.H.L.rep1___2}{}
#' \item{Ratio.H.L.rep1___3}{}
#' \item{Ratio.H.L.unmod..pep..rep1}{}
#' \item{Ratio.H.L.localized.rep1}{}
#' \item{Ratio.H.L.nmods.rep1}{}
#' \item{Ratio.H.L.variability.....rep1}{}
#' \item{Ratio.H.L.count.rep1}{}
#' \item{Ratio.H.L.iso.count.rep1}{}
#' \item{Ratio.H.L.type.rep1}{}
#' \item{Occupancy.L.rep1}{}
#' \item{Occupancy.H.rep1}{}
#' \item{Ratio.H.L.rep2}{}
#' \item{Ratio.H.L.rep2___1}{}
#' \item{Ratio.H.L.rep2___2}{}
#' \item{Ratio.H.L.rep2___3}{}
#' \item{Ratio.H.L.unmod..pep..rep2}{}
#' \item{Ratio.H.L.localized.rep2}{}
#' \item{Ratio.H.L.nmods.rep2}{}
#' \item{Ratio.H.L.variability.....rep2}{}
#' \item{Ratio.H.L.count.rep2}{}
#' \item{Ratio.H.L.iso.count.rep2}{}
#' \item{Ratio.H.L.type.rep2}{}
#' \item{Occupancy.L.rep2}{}
#' \item{Occupancy.H.rep2}{}
#' \item{Ratio.H.L.rep3LF}{}
#' \item{Ratio.H.L.rep3LF___1}{}
#' \item{Ratio.H.L.rep3LF___2}{}
#' \item{Ratio.H.L.rep3LF___3}{}
#' \item{Ratio.H.L.unmod..pep..rep3LF}{}
#' \item{Ratio.H.L.localized.rep3LF}{}
#' \item{Ratio.H.L.nmods.rep3LF}{}
#' \item{Ratio.H.L.variability.....rep3LF}{}
#' \item{Ratio.H.L.count.rep3LF}{}
#' \item{Ratio.H.L.iso.count.rep3LF}{}
#' \item{Ratio.H.L.type.rep3LF}{}
#' \item{Occupancy.L.rep3LF}{}
#' \item{Occupancy.H.rep3LF}{}
#' \item{Ratio.mod.base.L}{}
#' \item{Ratio.mod.base.H}{}
#' \item{Intensity.null}{}
#' \item{Intensity.L.null}{}
#' \item{Intensity.H.null}{}
#' \item{Ratio.mod.base.L.null}{}
#' \item{Ratio.mod.base.H.null}{}
#' \item{Intensity.rep1}{}
#' \item{Intensity.L.rep1}{}
#' \item{Intensity.H.rep1}{}
#' \item{Ratio.mod.base.L.rep1}{}
#' \item{Ratio.mod.base.H.rep1}{}
#' \item{Intensity.rep2}{}
#' \item{Intensity.L.rep2}{}
#' \item{Intensity.H.rep2}{}
#' \item{Ratio.mod.base.L.rep2}{}
#' \item{Ratio.mod.base.H.rep2}{}
#' \item{Intensity.rep3LF}{}
#' \item{Intensity.L.rep3LF}{}
#' \item{Intensity.H.rep3LF}{}
#' \item{Ratio.mod.base.L.rep3LF}{}
#' \item{Ratio.mod.base.H.rep3LF}{}
#' \item{Occupancy.null}{}
#' \item{Occupancy.rationull}{}
#' \item{Occupancy.error.scale.null}{}
#' \item{Occupancy.rep1}{}
#' \item{Occupancy.ratiorep1}{}
#' \item{Occupancy.error.scale.rep1}{}
#' \item{Occupancy.rep2}{}
#' \item{Occupancy.ratiorep2}{}
#' \item{Occupancy.error.scale.rep2}{}
#' \item{Occupancy.rep3LF}{}
#' \item{Occupancy.ratiorep3LF}{}
#' \item{Occupancy.error.scale.rep3LF}{}
#' \item{Proteins}{}
#' \item{Positions.within.proteins}{}
#' \item{Leading.proteins}{}
#' \item{Protein}{}
#' \item{Protein.names}{}
#' \item{Gene.names}{}
#' \item{Sequence.window}{}
#' \item{Fasta.headers}{}
#' \item{Diagnostic.peak}{}
#' \item{Modification.window}{}
#' \item{Peptide.window.coverage}{}
#' \item{Phospho..STY..Probabilities}{}
#' \item{Phospho..STY..Score.diffs}{}
#' \item{id}{}
#' \item{Positions}{}
#' \item{Peptide.IDs}{}
#' \item{Mod..peptide.IDs}{}
#' \item{Evidence.IDs}{}
#' \item{MS.MS.IDs}{}
#' \item{Best.localization.evidence.ID}{}
#' \item{Best.localization.MS.MS.ID}{}
#' \item{Best.localization.raw.file}{}
#' \item{Best.localization.scan.number}{}
#' \item{Best.score.evidence.ID}{}
#' \item{Best.score.MS.MS.ID}{}
#' \item{Best.score.raw.file}{}
#' \item{Best.score.scan.number}{}
#' \item{Best.PEP.evidence.ID}{}
#' \item{Best.PEP.MS.MS.ID}{}
#' \item{Best.PEP.raw.file}{}
#' \item{Best.PEP.scan.number}{}
#' \item{Unique.identifier}{}
#' \item{PhosphoSitePlus.window}{}
#' \item{PhosphoSitePlus.kinase}{}
#' \item{PhosphoSitePlus.kinase.uniprot}{}
#' \item{psite}{}
#' \item{numvalid}{}
#' \item{numvalid_trt}{}
#' \item{Gene.name}{}
#' \item{UniProt.names}{}
#' \item{Protein.name}{}
#' \item{Interpro.name}{}
#' \item{Prosite.name}{}
#' \item{proteinclass}{}
#' \item{Pfam}{}
#' \item{uniprot.acc.leading}{}
#' \item{gene.psite}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL


#' A table with statistics from differential phosphorylation site analysis of phospho-site SILAC ratios
#' @name psitestats
#' @docType data
#' @title  Table with statistics from differential phosphorylation site analysis of phospho-site SILAC ratios
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{ID}{}
#' \item{logFC.nullfiltisotope}{}
#' \item{P.Value.nullfiltisotope}{}
#' \item{adj.P.Val.nullfiltisotope}{}
#' \item{null}{H:L SILAC ratio for DMSO:DMOS null condition}
#' \item{rep1}{H:L SILAC ratios for SY-351(Heavy):DMSO(Light) biological replicate comparison 1}
#' \item{rep2}{H:L SILAC ratios for SY-351(Heavy):DMSO(Light) biological replicate comparison 2}
#' \item{rep3LF}{Label swap H:L SILAC ratios for DMSO(Heavy):SY-351(Light) biological replicate comparison 3}
#' \item{Gene.name}{}
#' \item{Gene.names}{}
#' \item{proteinclass}{}
#' \item{psite}{}
#' \item{gene.psite}{}
#' \item{Sequence.window}{}
#' \item{Position}{}
#' \item{Amino.acid}{}
#' \item{PhosphoSitePlus.kinase}{}
#' \item{uniprot.acc.leading}{}
#' \item{Protein.name}{}
#' \item{logFC.isotopeffect}{}
#' \item{P.Value.isotopeffect}{}
#' \item{adj.P.Val.isotopeffect}{}
#' \item{logFC.nullfilt}{}
#' \item{P.Value.nullfilt}{}
#' \item{adj.P.Val.nullfilt}{}
#' \item{logFC.simp}{}
#' \item{P.Value.simp}{}
#' \item{adj.P.Val.simp}{}
#' \item{logFC.notrend}{}
#' \item{P.Value.notrend}{}
#' \item{adj.P.Val.notrend}{}
#' \item{kinabbrev}{}
#' \item{gene.psite.kinase}{}
#' \item{Multiplicity}{}
#' \item{Known.site}{}
#' \item{Origin}{}
#' \item{Regulatory.site}{}
#' \item{Regulatory.site.function}{}
#' \item{Regulatory.site.process}{}
#' \item{Regulatory.site.protInteract}{}
#' \item{Regulatory.site.otherInteract}{}
#' \item{Regulatory.site.notes}{}
#' \item{Motifs}{}
#' \item{Pfam.domains}{}
#' \item{active.site}{}
#' \item{binding.site}{}
#' \item{calcium.binding.region}{}
#' \item{chain}{}
#' \item{coiled.coil.region}{}
#' \item{compositionally.biased.region}{}
#' \item{disulfide.bond}{}
#' \item{dna.binding.region}{}
#' \item{domain}{}
#' \item{glycosylation.site}{}
#' \item{helix}{}
#' \item{metal.ion.binding.site}{}
#' \item{modified.residue}{}
#' \item{mutagenesis.site}{}
#' \item{nucleotide.phosphate.binding.region}{}
#' \item{peptide}{}
#' \item{propeptide}{}
#' \item{region.of.interest}{}
#' \item{repeat.}{}
#' \item{sequence.conflict}{}
#' \item{sequence.variant}{}
#' \item{short.sequence.motif}{}
#' \item{signal.peptide}{}
#' \item{site}{}
#' \item{splice.variant}{}
#' \item{strand}{}
#' \item{topological.domain}{}
#' \item{transit.peptide}{}
#' \item{transmembrane.region}{}
#' \item{turn}{}
#' \item{zinc.finger.region}{}
#' \item{Localization.prob}{}
#' \item{PEP}{}
#' \item{Score}{}
#' \item{Delta.score}{}
#' \item{Score.for.localization}{}
#' \item{Mass.error..ppm.}{}
#' \item{Intensity}{}
#' \item{Intensity.L}{}
#' \item{Intensity.H}{}
#' \item{logp}{}
#' \item{gg.fdr.range}{}
#' \item{alph}{}
#' \item{Seqwin}{}
#' \item{ndupsites}{}
#' \item{ndupsiterank}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL


#' Table with statistics from differential protein expression analysis of protein SILAC ratios
#' @name proteinstats
#' @docType data
#' @title Table with statistics from differential protein expression analysis of protein SILAC ratios 
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{id}{}
#' \item{null}{H:L SILAC ratio for DMSO:DMOS null condition}
#' \item{rep1}{H:L SILAC ratios for SY-351(Heavy):DMSO(Light) biological replicate comparison 1}
#' \item{rep2}{H:L SILAC ratios for SY-351(Heavy):DMSO(Light) biological replicate comparison 2}
#' \item{rep3LF}{Label swap H:L SILAC ratios for DMSO(Heavy):SY-351(Light) biological replicate comparison 3}
#' \item{Gene.name}{}
#' \item{uniprot.id}{}
#' \item{uniprot.acc}{}
#' \item{Protein.name}{}
#' \item{Corum}{}
#' \item{logFC}{}
#' \item{CI.L}{}
#' \item{CI.R}{}
#' \item{AveExpr}{}
#' \item{t}{}
#' \item{P.Value}{}
#' \item{adj.P.Val}{adjusted p-values using BH method}
#' \item{B}{log-ods for differential expression}
#' \item{s2.post}{}
#' \item{sigma}{}
#' \item{fdr.range}{}
#' \item{logp}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL



#' Volcano plot for differential proteome analysis (trellis plot)
#' @name proteinvolcano
#' @docType data
#' @title Volcano plot for differential proteome analysis (trellis plot)
#' @format a \code{trellis} containing the following fields:
#' \describe{
#' \item{formula}{}
#' \item{as.table}{}
#' \item{aspect.fill}{}
#' \item{legend}{}
#' \item{panel}{}
#' \item{page}{}
#' \item{layout}{}
#' \item{skip}{}
#' \item{strip}{}
#' \item{strip.left}{}
#' \item{xscale.components}{}
#' \item{yscale.components}{}
#' \item{axis}{}
#' \item{xlab}{}
#' \item{ylab}{}
#' \item{xlab.default}{}
#' \item{ylab.default}{}
#' \item{xlab.top}{}
#' \item{ylab.right}{}
#' \item{main}{}
#' \item{sub}{}
#' \item{x.between}{}
#' \item{y.between}{}
#' \item{par.settings}{}
#' \item{plot.args}{}
#' \item{lattice.options}{}
#' \item{par.strip.text}{}
#' \item{index.cond}{}
#' \item{perm.cond}{}
#' \item{condlevels}{}
#' \item{call}{}
#' \item{x.scales}{}
#' \item{y.scales}{}
#' \item{panel.args.common}{}
#' \item{panel.args}{}
#' \item{packet.sizes}{}
#' \item{x.limits}{}
#' \item{y.limits}{}
#' \item{x.used.at}{}
#' \item{y.used.at}{}
#' \item{x.num.limit}{}
#' \item{y.num.limit}{}
#' \item{aspect.ratio}{}
#' \item{prepanel.default}{}
#' \item{prepanel}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL



abs_null_log2ratio_thresh <- 0.5 
# Any psites are removed for which there are numvalid_trt_thresh or less valid ratios 
# (counting only the samples containing a treatment channel)  
numvalid_trt_thresh <- 2

# False discovery rate threshold for differential expression with SY-351 treatment
fdr.thresh <- 0.05



#' Summary table for individual phosphorylation sites showing significant change.
#' This table is generated by filtering the \link{psitestats} table using the following thresholds:
#' abs_null_log2ratio_thresh < 0.5 
#' numvalid_trt_thresh > 2
#' fdr.thresh < 0.05
#'  
#' @name psitestats.grp
#' @docType data
#' @title Summary table for phosphorylation sites showing significant change. 
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{Gene}{}
#' \item{UniprotAcc}{}
#' \item{PSite}{}
#' \item{Log2FC}{}
#' \item{AdjPval}{}
#' \item{PSeqWin}{}
#' \item{PhosphoSitePlus.kinase}{}
#' \item{Regulatory.site.function}{}
#' \item{proteinclass}{}
#' \item{numsig.down}{}
#' \item{numsig.up}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL



#' Detailed description of the data
#' @name psitestats.protein.totals
#' @docType data
#' @title Descriptive data title
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{Uniprot_Acc}{}
#' \item{Gene}{}
#' \item{protein_function}{}
#' \item{high_conf_sites}{}
#' \item{numsig.down}{}
#' \item{min.log2fc}{}
#' \item{min.adj.pval}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{targets}
#' \link{updf}
NULL



#' Detailed description of the data
#' @name targets
#' @docType data
#' @title Descriptive data title
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{samples}{}
#' \item{Light}{}
#' \item{Heavy}{}
#' \item{samplenames}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{updf}
NULL



#' Detailed description of the data
#' @name updf
#' @docType data
#' @title Descriptive data title
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{motifid}{}
#' \item{rowid}{}
#' \item{motif}{}
#' \item{seqwin}{}
#' \item{log2FC}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
NULL


#' Detailed description of the data
#' @name anno_dn_df
#' @docType data
#' @title Descriptive data title
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{.y.}{}
#' \item{group1}{}
#' \item{group2}{}
#' \item{p}{}
#' \item{p.adj}{}
#' \item{method}{}
#' \item{x.pos}{}
#' \item{log2r.shift.p.adj}{}
#' \item{y.position}{}
#' \item{motif}{}
#' \item{score}{}
#' \item{fg_match}{}
#' \item{adjusted_p.value}{}
#' \item{motifx_p.adj}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL



#' Detailed description of the data
#' @name anno_up_df
#' @docType data
#' @title Descriptive data title
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{.y.}{}
#' \item{group1}{}
#' \item{group2}{}
#' \item{p}{}
#' \item{p.adj}{}
#' \item{method}{}
#' \item{x.pos}{}
#' \item{log2r.shift.p.adj}{}
#' \item{y.position}{}
#' \item{motif}{}
#' \item{score}{}
#' \item{fg_match}{}
#' \item{adjusted_p.value}{}
#' \item{motifx_p.adj}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{design.isotopeffect}
#' \link{dndf}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL




#' Detailed description of the data
#' @name dndf
#' @docType data
#' @title Descriptive data title
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{motifid}{}
#' \item{rowid}{}
#' \item{motif}{}
#' \item{seqwin}{}
#' \item{log2FC}{}
#' }
#' @source The data comes from________________________.
#' @seealso
#' \link{SY351SILAC}
#' \link{anno_dn_df}
#' \link{anno_up_df}
#' \link{design.isotopeffect}
#' \link{phosphosites}
#' \link{proteinstats}
#' \link{proteinvolcano}
#' \link{psitestats}
#' \link{psitestats.grp}
#' \link{psitestats.protein.totals}
#' \link{targets}
#' \link{updf}
NULL



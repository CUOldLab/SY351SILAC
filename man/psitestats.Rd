% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SY351SILAC.R
\docType{data}
\name{psitestats}
\alias{psitestats}
\title{Table with statistics from differential phosphorylation site analysis of phospho-site SILAC ratios}
\format{
a \code{tbl_df} containing the following fields:
\describe{
\item{ID}{}
\item{logFC.nullfiltisotope}{}
\item{P.Value.nullfiltisotope}{}
\item{adj.P.Val.nullfiltisotope}{}
\item{null}{H:L SILAC ratio for DMSO:DMOS null condition}
\item{rep1}{H:L SILAC ratios for SY-351(Heavy):DMSO(Light) biological replicate comparison 1}
\item{rep2}{H:L SILAC ratios for SY-351(Heavy):DMSO(Light) biological replicate comparison 2}
\item{rep3LF}{Label swap H:L SILAC ratios for DMSO(Heavy):SY-351(Light) biological replicate comparison 3}
\item{Gene.name}{}
\item{Gene.names}{}
\item{proteinclass}{}
\item{psite}{}
\item{gene.psite}{}
\item{Sequence.window}{}
\item{Position}{}
\item{Amino.acid}{}
\item{PhosphoSitePlus.kinase}{}
\item{uniprot.acc.leading}{}
\item{Protein.name}{}
\item{logFC.isotopeffect}{}
\item{P.Value.isotopeffect}{}
\item{adj.P.Val.isotopeffect}{}
\item{logFC.nullfilt}{}
\item{P.Value.nullfilt}{}
\item{adj.P.Val.nullfilt}{}
\item{logFC.simp}{}
\item{P.Value.simp}{}
\item{adj.P.Val.simp}{}
\item{logFC.notrend}{}
\item{P.Value.notrend}{}
\item{adj.P.Val.notrend}{}
\item{kinabbrev}{}
\item{gene.psite.kinase}{}
\item{Multiplicity}{}
\item{Known.site}{}
\item{Origin}{}
\item{Regulatory.site}{}
\item{Regulatory.site.function}{}
\item{Regulatory.site.process}{}
\item{Regulatory.site.protInteract}{}
\item{Regulatory.site.otherInteract}{}
\item{Regulatory.site.notes}{}
\item{Motifs}{}
\item{Pfam.domains}{}
\item{active.site}{}
\item{binding.site}{}
\item{calcium.binding.region}{}
\item{chain}{}
\item{coiled.coil.region}{}
\item{compositionally.biased.region}{}
\item{disulfide.bond}{}
\item{dna.binding.region}{}
\item{domain}{}
\item{glycosylation.site}{}
\item{helix}{}
\item{metal.ion.binding.site}{}
\item{modified.residue}{}
\item{mutagenesis.site}{}
\item{nucleotide.phosphate.binding.region}{}
\item{peptide}{}
\item{propeptide}{}
\item{region.of.interest}{}
\item{repeat.}{}
\item{sequence.conflict}{}
\item{sequence.variant}{}
\item{short.sequence.motif}{}
\item{signal.peptide}{}
\item{site}{}
\item{splice.variant}{}
\item{strand}{}
\item{topological.domain}{}
\item{transit.peptide}{}
\item{transmembrane.region}{}
\item{turn}{}
\item{zinc.finger.region}{}
\item{Localization.prob}{}
\item{PEP}{}
\item{Score}{}
\item{Delta.score}{}
\item{Score.for.localization}{}
\item{Mass.error..ppm.}{}
\item{Intensity}{}
\item{Intensity.L}{}
\item{Intensity.H}{}
\item{logp}{}
\item{gg.fdr.range}{}
\item{alph}{}
\item{Seqwin}{}
\item{ndupsites}{}
\item{ndupsiterank}{}
}
}
\source{
The data comes from________________________.
}
\description{
A table with statistics from differential phosphorylation site analysis of phospho-site SILAC ratios
}
\seealso{
\link{SY351SILAC}
\link{anno_dn_df}
\link{anno_up_df}
\link{design.isotopeffect}
\link{dndf}
\link{phosphosites}
\link{proteinstats}
\link{proteinvolcano}
\link{psitestats.grp}
\link{psitestats.protein.totals}
\link{targets}
\link{updf}
}

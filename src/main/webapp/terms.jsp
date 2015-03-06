<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="base/head.jsp" %>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <h3>Terms</h3>

                <br/>

                <h4>Terms of use</h4>
                <p>
                    This web site is intended to provide results from exome sequencing data of mostly sporadic 
                    ALS samples. The contents of the ALSdb is intended strictly for educational and research purposes. 
                    The data derived from this website may not be used for any commercial purpose. The data from this 
                    website may not be replicated on any other website without written consent.
                </p>

                <br/>

                <h4>Citation</h4>                
                <p>ALSdb,  New York City, New York (URL: http://alsdb.org) [date (month, year) accessed].</p>
                <p>                    
                    Elizabeth T. Cirulli, Brittany N. Lasseigne, Slavé Petrovski, Peter C. Sapp, Patrick A. Dion, 
                    Claire S. Leblond, Julien Couthouis, Yi-Fan Lu, Quanli Wang, Brian J. Krueger, Zhong Ren, 
                    Jonathan Keebler, Yujun Han, Shawn E. Levy, Braden E. Boone, Jack R. Wimbish, Lindsay L. Waite, 
                    Angela L. Jones, John P. Carulli, Aaron G. Day-Williams, John F. Staropoli, Winnie W. Xin, 
                    Alessandra Chesi, Alya R. Raphael, Diane McKenna-Yasek, Janet Cady, J.M.B. Vianney de Jong, 
                    Kevin P. Kenna, Bradley N. Smith, Simon Topp, Jack Miller, Athina Gkazi, FALS Sequencing Consortium, 
                    Ammar Al-Chalabi, Leonard H. van den Berg, Jan Veldink, Vincenzo Silani, Nicola Ticozzi, 
                    Christopher E. Shaw, Robert H. Baloh, Stanley Appel, Ericka Simpson, Clotilde Lagier-Tourenne, 
                    Stefan M. Pulst, Summer Gibson, John Q. Trojanowski, Lauren Elman, Leo McCluskey, Murray Grossman, 
                    Neil A. Shneider, Wendy K. Chung, John M. Ravits, Jonathan D. Glass, Katherine B. Sims, Vivianna M. 
                    Van Deerlin, Tom Maniatis, Sebastian D. Hayes,, Alban Ordureau, Sharan Swarup, John Landers, Frank Baas, 
                    Andrew S. Allen, Richard S. Bedlack, J. Wade Harper, Aaron D. Gitler, Guy A. Rouleau, Robert Brown, 
                    Matthew B. Harms, Gregory M. Cooper, Tim Harris, Richard M. Myers, David B. Goldstein. (in press 2015) 
                    Exome sequencing in amyotrophic lateral sclerosis identifies risk genes and pathways. 
                    <em>Science <a href="http://www.sciencemag.org/content/early/2015/02/18/science.aaa3650.full" 
                                   target="_blank">DOI: 10.1126/science.aaa3650</a></em>.
                </p>

                <br/>

                <h4>Data Generation</h4>

                <p>Sequencing of DNA was performed by the Duke Center for Human Genome Variation 
                    (now the Institute for Genomic Medicine, Columbia University), 
                    McGill University, Stanford University, and HudsonAlpha. 
                    Samples were either exome sequenced using the Agilent All Exon (37MB, 50MB or 65MB) 
                    or the Nimblegen SeqCap EZ V2.0 or 3.0 Exome Enrichment kit or whole-genome sequenced 
                    using Illumina GAIIx or HiSeq 2000 or 2500 sequencers according to standard protocols.
                </p>

                <p>
                    The Illumina lane-level fastq files were aligned to the Human Reference Genome (NCBI Build 37)
                    using the Burrows-Wheeler Alignment Tool (BWA). Picard software was used to remove duplicate 
                    reads and process these lane-level SAM files, resulting in a sample-level BAM file that was 
                    used for variant calling. GATK was used to recalibrate base quality scores, realign around 
                    indels, and call variants. The Duke and McGill/Stanford variants were required to have a quality score (QUAL) of at least 30, a quality by depth score
                    of at least 2, a mapping quality score of at least 40, a genotype quality (GQ) score of at 
                    least 20, a read position rank sum score greater than -10 and at least 10x coverage. Additionally, variants were restricted 
                    according to VQSR tranche (calculated using the known SNV sites from HapMap v3.3, dbSNP, and 
                    the Omni chip array from the 1000 Genomes Project): the cutoffs were a tranche of 99.9% for 
                    SNVs and 99% for indels. Variants are flagged among the “Genotype Confidence” field if they 
                    were determined to be sequencing, batch-specific or kit-specific artifacts, HWE violations, or 
                    if they were marked by EVS as being failures.
                </p>

                <p>Variants calls were restricted to coordinates within the Consensus Coding Sequence 
                    (CCDS) release 14, with an addition of up to 10 base pairs flanking each side of a 
                    protein-coding exon. All variants were annotated to Ensembl 73 using Variant Effect 
                    Predictor (VeP!). For the summary information only the single most damaging variant 
                    effect prediction is reported; however, the effect of a variant on all transcripts 
                    can be identified in the variant-level page.
                </p>

                <p>Coverage information for carrier and non-carrier sites is summarized as the 
                    percentage of 1,424 sequenced patients with ALS that had at 
                    least 3x, 10x, 20x and 201x read-depth coverage at the site.
                </p>
            </div>

        </div>

        <%@include file="base/footer.jsp" %>    
    </body>
</html>
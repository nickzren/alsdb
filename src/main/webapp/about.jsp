<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>About</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <h3 class="page-header">About</h3>

                <p class="lead">
                    The ALS Data Browser is a catalogue of genetic variants identified from 1,424 Caucasian patients recruited 
                    and sequenced for their diagnosis of Amyotrophic Lateral Sclerosis. Approximately 93.5% of these cases 
                    are sporadic. The database includes single nucleotide substitution variants (SNVs) 
                    and insertion and deletion (indels) variants. Funding for this study was provided by Biogen Idec.
                </p>
            
                <br/>

                <h4><i class="fa fa-database"></i> Data Generation</h4>

                <p>Sequencing of DNA was performed by the Duke Center for Human Genome Variation 
                    (now <a href="http://igm.columbia.edu" target="_blank">Institute for Genomic Medicine</a>), 
                    <a href="http://www.laboguyrouleau.ca/" target="_blank">McGill University</a>, 
                    <a href="http://gitlerlab.googlepages.com/" target="_blank">Stanford University</a>, and 
                    <a href="http://hudsonalpha.org/" target="_blank">HudsonAlpha</a>. 
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
                
                <br/>
                
                <h4><i class="fa fa-users"></i> Website team</h4>
                
                <p>Nick Ren, Joshua Bridgers, Quanli Wang, Slavé Petrovski</p>
            </div>
        </div>

        <%@include file="base/footer.jsp" %>    
    </body>
</html>
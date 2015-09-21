package object;

import util.DBManager;
import util.FormatManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Nick
 */
public class Variant {

    private int id;
    private String chr;
    private int chrInt;
    private int position;
    private String ref;
    private String allele;
    private String type;
    private boolean isMinorRef;
    private float cScore;
    private int hom;
    private int het;
    private int homRef;
    private int qcFailedSamples;
    private float maf;
    private float hweP;
    private float rivsAll01MafPercentile;
    private float rivsOeratioPercentile;
    private String rivsEdgecase;
    private float exacGlobalMaf;
    private float exacAfrMaf;
    private float exacAmrMaf;
    private float exacEasMaf;
    private float exacSasMaf;
    private float exacFinMaf;
    private float exacNfeMaf;
    private float exacOthMaf;
    private float evsEurMaf;
    private float evsAfrMaf;
    private float evsAllMaf;
    private String evsFilter;
    private String annodbFilter;
    private String hweFilter;

    public static final String title
            = "Chr,"
            + "Position,"
            + "Reference,"
            + "Variant,"
            + "Variant_type,"
            + "Is_minor_ref,"
            + "Homoz,"
            + "Heteroz,"
            + "Homoz_ref,"
            + "QC_failed_samples,"
            + "Case_maf,"
            + "Case_HWE_p,"
            + "ExAC_global_maf,"
            + "ExAC_afr_maf,"
            + "ExAC_amr_maf,"
            + "ExAC_eas_maf,"
            + "ExAC_sas_maf,"
            + "ExAC_fin_maf,"
            + "ExAC_nfe_maf,"
            + "ExAC_oth_maf,"
            + "EVS_EA_maf,"
            + "EVS_AA_maf,"
            + "EVS_all_maf,"
            + "RVIS_percentile,"
            + "RVIS_Edgecase,"
            + "OEratio_percentile,"
            + "HGNC,"
            + "Transcript,"
            + "Canonical,"
            + "Codon_change,"
            + "AA_change,"
            + "CCDS,"
            + "Consequence,"
            + "C_score_phred,"
            + "PolyPhen2_HumVar,"
            + "Sift,"
            + "EVS_filter,"
            + "AnnoDB_filter,"
            + "HWE_filter";

    private Annotation annotation; // most damaging one

    private HashMap<String, ArrayList<Annotation>> geneAnnotationMap
            = new HashMap<String, ArrayList<Annotation>>();

    public Variant(ResultSet rset) throws Exception {
        id = rset.getInt("variant_id");
        chr = rset.getString("chr");

        if (chr.equalsIgnoreCase("X")) {
            chrInt = 23;
        } else if (chr.equalsIgnoreCase("Y")) {
            chrInt = 24;
        } else {
            chrInt = Integer.parseInt(chr);
        }

        position = rset.getInt("pos");
        ref = rset.getString("ref");
        allele = rset.getString("allele");
        type = rset.getString("variant_type");
        isMinorRef = rset.getBoolean("is_minor_ref");
        cScore = FormatManager.getFloat(rset.getObject("c_score_phred"));
        hom = rset.getInt("hom");
        het = rset.getInt("het");
        homRef = rset.getInt("hom_ref");
        qcFailedSamples = rset.getInt("QC_failed_samples");
        maf = rset.getFloat("case_maf");
        hweP = rset.getFloat("case_hwe_p");

        rivsAll01MafPercentile = FormatManager.getFloat(rset.getObject("rvis_all_01maf_percentile"));
        rivsOeratioPercentile = FormatManager.getFloat(rset.getObject("rvis_oeratio_percentile"));
        rivsEdgecase = rset.getString("rvis_edgecase");

        exacGlobalMaf = FormatManager.getFloat(rset.getObject("exac_global_maf"));
        exacAfrMaf = FormatManager.getFloat(rset.getObject("exac_afr_maf"));
        exacAmrMaf = FormatManager.getFloat(rset.getObject("exac_amr_maf"));
        exacEasMaf = FormatManager.getFloat(rset.getObject("exac_eas_maf"));
        exacSasMaf = FormatManager.getFloat(rset.getObject("exac_sas_maf"));
        exacFinMaf = FormatManager.getFloat(rset.getObject("exac_fin_maf"));
        exacNfeMaf = FormatManager.getFloat(rset.getObject("exac_nfe_maf"));
        exacOthMaf = FormatManager.getFloat(rset.getObject("exac_oth_maf"));

        evsEurMaf = FormatManager.getFloat(rset.getObject("evs_eur_maf"));
        evsAfrMaf = FormatManager.getFloat(rset.getObject("evs_afr_maf"));
        evsAllMaf = FormatManager.getFloat(rset.getObject("evs_all_maf"));
        evsFilter = FormatManager.getString(rset.getString("evs_filter"));

        annodbFilter = FormatManager.getString(rset.getString("annodb_filter"));
        hweFilter = FormatManager.getString(rset.getString("HWE_filter"));
    }

    public void initAnnotationMap() throws Exception {
        String sql = "SELECT * "
                + "FROM annotation_HA "
                + "WHERE variant_id = " + id + " "
                + "ORDER BY igm_rank;";

        ResultSet rset = DBManager.executeQuery(sql);

        while (rset.next()) {
            Annotation anno = new Annotation(rset);

            if (annotation == null) {
                annotation = anno; // the most damaging one
            }

            if (!geneAnnotationMap.containsKey(anno.getGeneName())) {
                geneAnnotationMap.put(anno.getGeneName(), new ArrayList<Annotation>());
            }

            geneAnnotationMap.get(anno.getGeneName()).add(anno);
        }

        rset.close();
    }

    public int getIdInt() {
        return id;
    }

    public String getIdStr() {
        return chr + "-" + position + "-" + ref + "-" + allele;
    }

    public String getChr() {
        return chr;
    }

    public int getChrInt() {
        return chrInt;
    }
    
    public int getPosition() {
        return position;

    }

    public String getRef() {
        return ref;
    }

    public String getAllele() {
        return allele;
    }

    public int getAlleleCount() {
        return 2 * hom + het;
    }

    public int getSampleCount() {
        return homRef + het + hom;
    }

    public int getHomozygousCount() {
        return hom;
    }

    public float getMaf() {
        return maf;
    }

    public float getCscore() {
        return cScore;
    }

    public HashMap<String, ArrayList<Annotation>> getGeneAnnotationMap() {
        return geneAnnotationMap;
    }

    public Annotation getAnnotation() {
        return annotation;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(chr).append(",");
        sb.append(position).append(",");
        sb.append(ref).append(",");
        sb.append(allele).append(",");
        sb.append(type).append(",");
        sb.append(isMinorRef).append(",");
        sb.append(hom).append(",");
        sb.append(het).append(",");
        sb.append(homRef).append(",");
        sb.append(qcFailedSamples).append(",");
        sb.append(maf).append(",");
        sb.append(hweP).append(",");

        sb.append(FormatManager.getString(exacGlobalMaf)).append(",");
        sb.append(FormatManager.getString(exacAfrMaf)).append(",");
        sb.append(FormatManager.getString(exacAmrMaf)).append(",");
        sb.append(FormatManager.getString(exacEasMaf)).append(",");
        sb.append(FormatManager.getString(exacSasMaf)).append(",");
        sb.append(FormatManager.getString(exacFinMaf)).append(",");
        sb.append(FormatManager.getString(exacNfeMaf)).append(",");
        sb.append(FormatManager.getString(exacOthMaf)).append(",");

        sb.append(FormatManager.getString(evsEurMaf)).append(",");
        sb.append(FormatManager.getString(evsAfrMaf)).append(",");
        sb.append(FormatManager.getString(evsAllMaf)).append(",");

        sb.append(FormatManager.getString(rivsAll01MafPercentile)).append(",");
        sb.append(rivsEdgecase).append(",");
        sb.append(FormatManager.getString(rivsOeratioPercentile)).append(",");

        sb.append(annotation.getGeneName()).append(",");
        sb.append(annotation.getTranscript()).append(",");
        sb.append(annotation.getCanonical()).append(",");
        sb.append(annotation.getCodonChange()).append(",");
        sb.append(annotation.getAaChange()).append(",");
        sb.append(annotation.getCcds()).append(",");
        sb.append(annotation.getConsequence()).append(",");
        sb.append(FormatManager.getString(cScore)).append(",");
        sb.append(annotation.getPolyphenHumvar()).append(",");
        sb.append(annotation.getSift()).append(",");

        sb.append(evsFilter).append(",");
        sb.append(annodbFilter).append(",");
        sb.append(hweFilter);

        return sb.toString();
    }
}

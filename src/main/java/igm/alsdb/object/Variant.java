package igm.alsdb.object;

import igm.alsdb.util.DBManager;
import igm.alsdb.util.FormatManager;
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
    private int position;
    private String ref;
    private String allele;
    private String type;
    private boolean isMinorRef;
    private float cScore;
    private int majorHom;
    private int het;
    private int minorHom;
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

    public static final String title
            = "Chrom,"
            + "Position,"
            + "Reference,"
            + "Alternate,"
            + "Variant Type,"
            + "Is Minor Ref,"
            + "CADD Score,"
            + Annotation.title + ","
            + "Major Hom,"
            + "Het,"
            + "Minor Hom,"
            + "Maf,"
            + "Hwe P,"
            + "RVIS All 01Maf Percentile,"
            + "RVIS Oeratio Percentile,"
            + "RVIS Edgecase,"
            + "ExAC Global Maf,"
            + "ExAC Afr Maf ,"
            + "ExAC Amr Maf,"
            + "ExAC Eas Maf,"
            + "ExAC Sas Maf,"
            + "ExAC Fin Maf,"
            + "ExAC Nfe Maf,"
            + "ExAC Oth Maf,"
            + "Evs Eur Maf,"
            + "Evs Afr Maf,"
            + "Evs All Maf";

    private Annotation annotation; // most damaging one

    private HashMap<String, ArrayList<Annotation>> geneAnnotationMap
            = new HashMap<String, ArrayList<Annotation>>();

    public Variant(ResultSet rset) throws Exception {
        id = rset.getInt("variant_id");
        chr = rset.getString("chr");
        position = rset.getInt("pos");
        ref = rset.getString("ref");
        allele = rset.getString("allele");
        type = rset.getString("variant_type");
        isMinorRef = rset.getBoolean("is_minor_ref");
        cScore = FormatManager.getFloat(rset.getObject("c_score_phred"));
        majorHom = rset.getInt("major_hom");
        het = rset.getInt("het");
        minorHom = rset.getInt("minor_hom");
        maf =rset.getFloat("case_maf");
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
    }

    public void initAnnotationMap() throws Exception {
        String sql = "SELECT * "
                + "FROM annotation "
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
        return 2 * minorHom + het;
    }

    public int getHomozygousCount() {
        return minorHom;
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
        sb.append(cScore).append(",");

        sb.append(annotation.toString()).append(",");

        sb.append(majorHom).append(",");
        sb.append(het).append(",");
        sb.append(minorHom).append(",");
        sb.append(maf).append(",");
        sb.append(hweP).append(",");

        sb.append(rivsAll01MafPercentile).append(",");
        sb.append(rivsOeratioPercentile).append(",");
        sb.append(rivsEdgecase).append(",");

        sb.append(exacGlobalMaf).append(",");
        sb.append(exacAfrMaf).append(",");
        sb.append(exacAmrMaf).append(",");
        sb.append(exacEasMaf).append(",");
        sb.append(exacSasMaf).append(",");
        sb.append(exacFinMaf).append(",");
        sb.append(exacNfeMaf).append(",");
        sb.append(exacOthMaf).append(",");

        sb.append(evsEurMaf).append(",");
        sb.append(evsAfrMaf).append(",");
        sb.append(evsAllMaf);

        return sb.toString();
    }
}

package igm.alsdb.object;

import igm.alsdb.util.FormatManager;
import java.sql.ResultSet;

/**
 *
 * @author nick
 */
public class Annotation {

    private String geneName;
    private String transcript;
    private String codonChange;
    private String aaChange;
    private String ccds;
    private String consequence;
    private String polyphenHumvar;
    private String sift;

    public static final String title
            = "HGNC,"
            + "Transcript,"
            + "Codon_change,"
            + "AA_change,"
            + "CCDS,"
            + "Consequence,"
            + "PolyPhen2_HumVar,"
            + "Sift";

    public Annotation(ResultSet rset) throws Exception {
        geneName = FormatManager.getString(rset.getString("gene_name"));
        transcript = FormatManager.getString(rset.getString("transcript"));
        codonChange = FormatManager.getString(rset.getString("codon_change"));
        aaChange = FormatManager.getString(rset.getString("aa_change"));
        ccds = FormatManager.getString(rset.getString("ccds"));
        consequence = FormatManager.getString(rset.getString("consequence"));
        polyphenHumvar = FormatManager.getString(rset.getString("polyphen_humvar"));
        sift = FormatManager.getString(rset.getString("sift"));
    }

    public String getGeneName() {
        return geneName;
    }

    public String getTranscript() {
        return transcript;
    }

    public String getCodonChange() {
        return codonChange;
    }

    public String getAaChange() {
        return aaChange;
    }

    public String getCcds() {
        return ccds;
    }

    public String getConsequence() {
        return consequence;
    }

    public String getPolyphenHumvar() {
        return polyphenHumvar;
    }

    public String getSift() {
        return sift;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        sb.append(geneName).append(",");
        sb.append(transcript).append(",");
        sb.append(codonChange).append(",");
        sb.append(aaChange).append(",");
        sb.append(ccds).append(",");
        sb.append(consequence).append(",");
        sb.append(polyphenHumvar).append(",");
        sb.append(sift);

        return sb.toString();
    }
}

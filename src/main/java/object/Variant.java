package object;

import java.sql.ResultSet;

/**
 *
 * @author Nick
 */
public class Variant {

    private String chr;
    private int pos;
    private String ref;
    private String alt;
    private boolean isMinorRef;
    private int major_hom;
    private int het;
    private int minor_hom;
    private float maf;

    public static final String title
            = "Chr,"
            + "Pos,"
            + "Ref,"
            + "Alt,"
            + "Is_minor_ref,"
            + "Major_hom,"
            + "Heteroz,"
            + "Minor_hom,"
            + "MAF";

    public Variant(ResultSet rset) throws Exception {
        chr = rset.getString("chr");
        pos = rset.getInt("pos");
        ref = rset.getString("ref");
        alt = rset.getString("allele");
        isMinorRef = rset.getBoolean("is_minor_ref");
        major_hom = rset.getInt("major_hom");
        het = rset.getInt("het");
        minor_hom = rset.getInt("minor_hom");
        maf = rset.getFloat("maf");
    }

    public String getIdStr() {
        return chr + "-" + pos + "-" + ref + "-" + alt;
    }

    public String getChr() {
        return chr;
    }

    public int getPosition() {
        return pos;

    }

    public String getRef() {
        return ref;
    }

    public String getAllele() {
        return alt;
    }

    public int getAlleleCount() {
        if (isMinorRef) {
            return 2 * major_hom + het;
        } else {
            return 2 * minor_hom + het;
        }
    }

    public int getSampleCount() {
        return minor_hom + het + major_hom;
    }

    public float getMaf() {
        return maf;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        sb.append(chr).append(",");
        sb.append(pos).append(",");
        sb.append(ref).append(",");
        sb.append(alt).append(",");
        sb.append(isMinorRef).append(",");
        sb.append(major_hom).append(",");
        sb.append(het).append(",");
        sb.append(minor_hom).append(",");
        sb.append(maf).append("\n");

        return sb.toString();
    }
}

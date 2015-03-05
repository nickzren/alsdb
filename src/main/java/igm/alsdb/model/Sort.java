package igm.alsdb.model;

import igm.alsdb.object.Variant;
import java.util.Collections;
import java.util.Comparator;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author nick
 */
public class Sort {

    public static String column;

    private static VariantComparator variantComparator = new VariantComparator();
    private static ConsequenceComparator consequenceComparator = new ConsequenceComparator();
    private static MafComparator mafComparator = new MafComparator();

    public static void init(HttpServletRequest request) throws Exception {
        column = request.getParameter("column");

        if (column.equals("Variant")) {
            Collections.sort(Output.variantList, variantComparator);
        } else if (column.equals("Consequence")) {
            Collections.sort(Output.variantList, consequenceComparator);
        } else if (column.equals("MAF")) {
            Collections.sort(Output.variantList, mafComparator);
        }
    }
}

class VariantComparator implements Comparator<Variant> {

    public int compare(Variant v1, Variant v2) {
        if (v1.getChrInt() >= v2.getChrInt()
                && v1.getPosition() >= v2.getPosition()) {
            return 1;
        } else {
            return -1;
        }
    }
}

class ConsequenceComparator implements Comparator<Variant> {

    public int compare(Variant v1, Variant v2) {
        return v1.getAnnotation().getIgmRank()
                - v2.getAnnotation().getIgmRank();
    }
}

class MafComparator implements Comparator<Variant> {

    public int compare(Variant v1, Variant v2) {
        if (v1.getMaf() > v2.getMaf()) {
            return 1;
        } else if (v1.getMaf() == v2.getMaf()) {
            return 0;
        } else {
            return -1;
        }
    }
}

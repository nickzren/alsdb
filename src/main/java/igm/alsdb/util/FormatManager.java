package igm.alsdb.util;

import igm.alsdb.global.Data;
import java.text.DecimalFormat;
import java.text.NumberFormat;

/**
 *
 * @author nick
 */
public class FormatManager {

    private static NumberFormat pformat1 = new DecimalFormat("0.####");
    private static NumberFormat pformat2 = new DecimalFormat("0.###E000");

    public static String getString(float value) {
        if (value == Data.NA) {
            return "-";
        }

        if (value < 0.001 && value > 0) {
            return pformat2.format(value);
        } else {
            return pformat1.format(value);
        }
    }
    
    public static boolean isNumeric(String str) {
        return str.matches("-?\\d+(\\.\\d+)?");  //match a number with optional '-' and decimal.
    }

    public static String getString(String str) {
        if (str == null) {
            return "-";
        }

        return str;
    }

    public static float getFloat(Object obj) {
        Float f = (Float) obj;

        if (f == null) {
            return Data.NA;
        }

        return f.floatValue();
    }
}

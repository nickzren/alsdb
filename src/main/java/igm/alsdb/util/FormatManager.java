package igm.alsdb.util;

import igm.alsdb.global.Data;
import java.text.DecimalFormat;
import java.text.NumberFormat;

/**
 *
 * @author nick
 */
public class FormatManager {

    public static String getString(float value) {
        if (value == Data.NA) {
            return "-";
        }

        return String.valueOf(value);
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

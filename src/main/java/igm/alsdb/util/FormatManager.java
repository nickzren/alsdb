package igm.alsdb.util;

import igm.alsdb.global.Data;

/**
 *
 * @author nick
 */
public class FormatManager {

    public static boolean isNumeric(String str) {
        return str.matches("-?\\d+(\\.\\d+)?");  //match a number with optional '-' and decimal.
    }

    public static String getString(String str) {
        if (str == null) {
            return "";
        }

        return str;
    }

    public static String getString(float f) {
        if (f == Data.NA) {
            return "";
        }

        return String.valueOf(f);
    }

    public static float getFloat(Object obj) {
        Float f = (Float) obj;

        if (f == null) {
            return Data.NA;
        }

        return f.floatValue();
    }
}

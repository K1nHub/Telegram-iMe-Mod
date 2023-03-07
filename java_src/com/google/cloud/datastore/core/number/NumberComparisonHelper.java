package com.google.cloud.datastore.core.number;
/* loaded from: classes3.dex */
public final class NumberComparisonHelper {
    public static int compareLongs(long j, long j2) {
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        if (i < 0) {
            return -1;
        }
        return i > 0 ? 1 : 0;
    }

    public static int firestoreCompareDoubleWithLong(double d, long j) {
        if (!Double.isNaN(d) && d >= -9.223372036854776E18d) {
            if (d >= 9.223372036854776E18d) {
                return 1;
            }
            int compareLongs = compareLongs((long) d, j);
            return compareLongs != 0 ? compareLongs : firestoreCompareDoubles(d, j);
        }
        return -1;
    }

    public static int firestoreCompareDoubles(double d, double d2) {
        if (d < d2) {
            return -1;
        }
        int i = (d > d2 ? 1 : (d == d2 ? 0 : -1));
        if (i > 0) {
            return 1;
        }
        if (i == 0) {
            return 0;
        }
        if (Double.isNaN(d2)) {
            return !Double.isNaN(d) ? 1 : 0;
        }
        return -1;
    }
}

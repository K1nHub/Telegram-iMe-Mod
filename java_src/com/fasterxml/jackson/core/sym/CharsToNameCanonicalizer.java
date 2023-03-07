package com.fasterxml.jackson.core.sym;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class CharsToNameCanonicalizer {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class Bucket {
    }

    private CharsToNameCanonicalizer(int i) {
        new AtomicReference(TableInfo.createInitial(64));
    }

    public static CharsToNameCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    protected static CharsToNameCanonicalizer createRoot(int i) {
        return new CharsToNameCanonicalizer(i);
    }

    /* loaded from: classes.dex */
    private static final class TableInfo {
        public TableInfo(int i, int i2, String[] strArr, Bucket[] bucketArr) {
        }

        public static TableInfo createInitial(int i) {
            return new TableInfo(0, 0, new String[i], new Bucket[i >> 1]);
        }
    }
}

package org.ton.crypto;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
/* compiled from: crc32.kt */
/* loaded from: classes6.dex */
public final class Crc32Kt {
    private static final Lazy CASTAGNOLI_TABLE$delegate;
    private static final Lazy IEEE_TABLE$delegate;

    static {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<int[][]>() { // from class: org.ton.crypto.Crc32Kt$IEEE_TABLE$2
            @Override // kotlin.jvm.functions.Function0
            public final int[][] invoke() {
                int[][] crc32slicingTable;
                crc32slicingTable = Crc32Kt.crc32slicingTable(-306674912);
                return crc32slicingTable;
            }
        });
        IEEE_TABLE$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<int[][]>() { // from class: org.ton.crypto.Crc32Kt$CASTAGNOLI_TABLE$2
            @Override // kotlin.jvm.functions.Function0
            public final int[][] invoke() {
                int[][] crc32slicingTable;
                crc32slicingTable = Crc32Kt.crc32slicingTable(-2097792136);
                return crc32slicingTable;
            }
        });
        CASTAGNOLI_TABLE$delegate = lazy2;
    }

    public static final int[][] getCASTAGNOLI_TABLE() {
        return (int[][]) CASTAGNOLI_TABLE$delegate.getValue();
    }

    private static final int[] crc32table(int i, int[] iArr) {
        for (int i2 = 0; i2 < 256; i2++) {
            int i3 = i2;
            for (int i4 = 0; i4 < 8; i4++) {
                i3 = (i3 & 1) != 0 ? (i3 >>> 1) ^ i : i3 >>> 1;
            }
            iArr[i2] = i3;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int[][] crc32slicingTable(int i) {
        int[][] iArr = new int[8];
        for (int i2 = 0; i2 < 8; i2++) {
            iArr[i2] = new int[256];
        }
        crc32table(i, iArr[0]);
        for (int i3 = 0; i3 < 256; i3++) {
            int i4 = iArr[0][i3];
            for (int i5 = 1; i5 < 8; i5++) {
                i4 = (i4 >>> 8) ^ iArr[0][i4 & 255];
                iArr[i5][i3] = i4;
            }
        }
        return iArr;
    }
}
